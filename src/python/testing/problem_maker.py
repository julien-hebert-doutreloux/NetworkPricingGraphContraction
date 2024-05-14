from preamble.preamble import *
from gamma.common import npp_from_json, set_of_frozenset, json_compression, to_json
from gamma.gamma import GammaNPP
from gamma.rules import make_rules, Rules
from unit_test.tools import timing_decorator

PARAMETERS = config.test_problem_maker(__name__)
logger = config.log(**PARAMETERS['logger'])

def count_files_ending_with(extension, directory):
    count = 0
    for filename in os.listdir(directory):
        if filename.endswith(extension):
            count += 1
    return count

    
@timing_decorator
def problem_maker(
                file_npp:str,
                directory_npp:str,
                directory_original:str,
                n, min_sl, max_sl, m,
                H1, H2, H3, H4,
                max_attemp,
                batch_size          
                ):
    
    # Parameter
    
    # File and folder
    # file_npp       : ./data/from_github/problems/progressive-2/problem.json
    # directory_npp  : ./data/generated/.../
    
    # Naming scheme
    # id-length-problem_(PTR).ext (id 00000 reserve for the original npp)
    # P : problem 
    # T : transformation
    # R : result
    
    # GAMMA
    # n      : number of transformations (int, list)
    # min_sl : minimum length allowed for an element of a partition (int, list)
    # max_sl : maximum length allowed for an element of a partition (int, list)
    # m      : number of element with length strictly greater than 1 (int, list)
    # max_attemp : number of try allowed to find one partition (int, list)
    
    # H1 : Continuity-free edge equivalence class hypothesis (0/1, list)
    # H2 : Equivalence class assumption for elements of equal value (0/1, list)
    # H3 : Tolled element equivalence class hypothesis (0/1, list)
    # H4 : Local element only (0/1, list)
    
    # batch_size int
    basename, file_extension = os.path.splitext(os.path.basename(file_npp))
    
    # 1) Import problem
    nodes, edges, problems = npp_from_json(file_npp)
    
    # 2) Preprocess the problem
    # only integer cost and demand
    for edge in edges:
        edge.cost = max(int(round(edge.cost, 0)), 1)
    for problem in problems:
        problem['demand'] = max(int(round(problem['demand'], 0)), 1)
        
    # 3) generate graph contraction GammaNPP
    if all(map(lambda x : type(x) ==int, [n, min_sl, max_sl, m, H1, H2, H3, H4, max_attemp])):
        n = [n, ]
        min_sl = [min_sl, ]
        max_sl = [max_sl, ]
        m = [m, ]
        H1 = [H1, ]
        H2 = [H2, ]
        H3 = [H3, ]
        H4 = [H4, ]
        max_attemp = [max_attemp, ]
        
    
    all_contraction = {}
    trivial_partition = set_of_frozenset([(e, ) for e in edges])
    all_contraction[(0, 0, 0, 0, 0, 0, 0, 0, 0)] = [GammaNPP(nodes, edges, trivial_partition, problems), ]



    for params in zip(n, min_sl, max_sl, m, H1, H2, H3, H4, max_attemp):
        all_contraction[params] = []
        
        rules = make_rules(edges, *params[4:8:])
        
        # Minimal rules
        if any(map(lambda x: len(x)<=1, rules.values())):
            rules = {k:v for k, v in rules.items() if len(v)>1}
            logger.debug("Reducing rules")
            
        # Empty rules
        if not rules:
            logger.debug(f"Parameters n-min_sl-max_sl-m-H1-H2-H3-H4 : {'-'.join(map(str, params))} have no rules")
            partitions = []
        else:
            # Singleton are element only compatible with themselves within the parameters
            # they need to be added to each partition generated
            rules = Rules(rules)
            difference = set(edges) - set(rules)       # {x1, x2, ...}
            singleton = set_of_frozenset([(x,) for x in difference])   # {{x1, }, {x2, }, ...}
            
            partitions = rules.random_partition(*params[:4], params[-1])
    
        if not partitions:
            logger.debug(f"Parameters n-min_sl-max_sl-m-H1-H2-H3-H4 : {'-'.join(map(str, params))} have no partitions")
            logger.debug(f"file : {file_npp}")
            #input()
        else:
            # Adding missing elements
            for partition in partitions:
                all_contraction[params].append(GammaNPP(nodes, edges, partition | singleton, problems))
            
            partitions = set()
        
    
    # 5) export in batch
    filename = f"{'%06d' % 0}-{'%06d' % 0}-{basename}"
    
    to_json(all_contraction[(0, 0, 0, 0, 0, 0, 0, 0, 0)][0].image_problem_to_dict(), directory_original, filename+'-P')
    to_json(all_contraction[(0, 0, 0, 0, 0, 0, 0, 0, 0)][0].transformation_to_dict(), directory_original, filename+'-T')
    
    all_contraction.pop((0, 0, 0, 0, 0, 0, 0, 0, 0))
    
    export_array = []
    i = 1
    for params, contractions in all_contraction.items():
        params = list(params)
        for contraction in contractions:
            number = "%06d" % i
            id_ = f"{number}-{'-'.join(map(str, params))}-{basename}"
            export_array.append(
                                    (id_, contraction.image_problem_to_dict(), contraction.transformation_to_dict())
                                )
            i+=1
            
    random.shuffle(export_array)
    current_problems_dict = {}
    current_transformations_dict = {}
    j = 1
    for i, (id_, problem, transformation) in enumerate(export_array, start=1):
        if (i%(batch_size+1)) == 0 or i == len(export_array):
            number2 = "%06d" % j
            if len(current_problems_dict)>0:
            
                number1 ="%06d" %  count_files_ending_with("P.pkl", directory_npp)
                
                length = "%06d" % len(current_problems_dict)
                filename = f"{number2}-{number1}-{length}-{basename}"            
                with open(os.path.join(directory_npp, filename+'-P.pkl'), 'wb') as f:
                    pickle.dump(current_problems_dict, f)
                    
                with open(os.path.join(directory_npp, filename+'-T.pkl'), 'wb') as f:
                    pickle.dump(current_transformations_dict, f)
                print(len(current_problems_dict))
                current_problems_dict = {}
                current_transformations_dict = {}
                j+=1
        
        current_problems_dict[id_] = problem
        current_transformations_dict[id_] = transformation
        
        

    
