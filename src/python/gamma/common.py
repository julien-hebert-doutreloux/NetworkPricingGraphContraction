from preamble.preamble import *
from graph.graph import Node, Edge
# Tool to import and export problem to a compatible format for the NPP

PARAMETERS = config.gamma_common(__name__)
logger = config.log(**PARAMETERS['logger'])
def set_of_frozenset(iterable):
    return { frozenset(x) for x in iterable }
    
    
## Tested
def from_json(input_file):
    # Pont entre le code de Ming Bui et la transformation
    
    # Verify if the file exist
    if not os.path.isfile(input_file):
        print(f"Error: The specified file does not exist: {input_file}")
        return
        
    with open(input_file, 'r') as json_file:
        loaded_data = json.load(json_file)

    json_problem = loaded_data['problem'] 
    
    # create node
    node_dict = {i : Node(i) for i in range(1, json_problem['V']+1)}
    nodes = node_dict.values()
    
    # create edge
    edges = []         
    for i, edge in enumerate(json_problem['A'], start=1):
        edge['src'] = node_dict[edge['src']]
        edge['dst'] = node_dict[edge['dst']]
        edges.append(Edge(**edge, label=i))

    # convert problem
    problems = []
    for k in json_problem['K']:
        k['orig'] = node_dict[k['orig']]
        k['dest'] = node_dict[k['dest']]
        problems.append(k)
        
    return nodes, edges, problems
    
## Tested
def to_json(
    nodes: list,
    edges: list,
    problems: list,
    directory:str,
    filename:str,
    indent: int=2
) -> dict:

    json_dict = {'problem': {}}

    # Nodes
    json_dict['problem']['V'] = len(nodes)

    # Edges
    fct = lambda e: {'src': int(str(e.src)), 'dst': int(str(e.dst)), 'cost': e.cost, 'toll': e.toll}
    json_dict['problem']['A'] = [fct(edge) for edge in edges]

    # Problems
    fct = lambda p: {'orig': int(str(p['orig'])), 'dest': int(str(p['dest'])), 'demand': p['demand']}
    json_dict['problem']['K'] = [fct(problem) for problem in problems]


    
    # Check if directory is specified
    if directory is None:
        print("Error: The directory parameter is not specified")
        return

    # Check if filename is specified
    if filename is None:
        print("Error: The filename parameter is not specified")
        return
        
    # Verify the extension
    elif filename.endswith('.json'):
        print("Error: The filename parameter ends with the extension .json")
        return
        
    # Check if directory is a directory or a file
    if not os.path.isdir(directory):
        print("Error: The directory parameter is not a directory")
        return
    
    # Use the specified directory and filename
    filename = filename if filename else 'rebuild_json'
    output_file = os.path.join(directory, f"{filename}.json")
        

    # Check if the file already exists
    if os.path.isfile(output_file):
        print(f"Error: The specified file already exists: {output_file}")
        return

    # Write the dictionary to the file
    with open(output_file, 'w') as json_file:
        json.dump(json_dict, json_file, indent=indent)


    #if os.stat(input_file).st_size == 0:
    #    print(f"Error: The specified file is empty: {input_file}")
    #    return
        
    return json_dict
    
def import_partition(input_file:str):
    with open('file.pkl', 'rb') as f:
        data = pickle.load(f)
    return data


# Information tools
def print_columns(*lists, headers=None):
    if headers is not None:
        if len(headers) != len(lists):
            raise ValueError("Number of headers must match the number of lists.")

    # Find the maximum length of each element in the lists or headers
    max_lengths = [
        max(len(str(val)) for val in lst) if lst else 0  # Handle empty lists
        for lst in lists
    ]

    # Use the maximum length for each column as the column width
    column_widths = [max(length, len(header)) for length, header in zip(max_lengths, headers)]

    # Print headers if provided
    if headers is not None:
        print(" | ".join(f"{header:>{width}}" for header, width in zip(headers, column_widths)))
        print("-" * (sum(column_widths) + len(column_widths) * 3 - 1))  # Separator line
    
    max_list_lenght = max(list(map(len,lists)))

    for lst in lists:
        while len(lst) != max_list_lenght:
            lst.append('')
        
    # Iterate over the zipped lists and print in columns
    for row in zip(*lists):
        print(" | ".join(f"{val:>{width}}" for val, width in zip(row, column_widths)))
