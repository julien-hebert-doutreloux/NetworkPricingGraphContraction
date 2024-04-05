from preamble.preamble import *
from gamma.common import from_json, set_of_frozenset
from unit_test.tools import timing_decorator, unit_test_decorator
from plot.plot_graph import plot_graph, old_plot_graph
from test.shortest_path_rewind import shortest_path_rewind

def bell_number(n):
    if n == 0:
        return 1
    
    bell = [[0] * (n + 1) for _ in range(n + 1)]
    bell[0][0] = 1
    
    for i in range(1, n + 1):
        bell[i][0] = bell[i - 1][i - 1]
        
        for j in range(1, i + 1):
            bell[i][j] = bell[i - 1][j - 1] + bell[i][j - 1]
    
    return bell[n][0]
    

@timing_decorator
def main(verbose):
    filepath = './tmp/edge_dataframe.pkl'
    #filepath = './tmp/meta_dataframe.pkl'
    df = pd.read_pickle(filepath)
    print(df)
    
    
    
    
    
    
    
    
    
    
    
    shortest_path_rewind(before_graph_file, before_graph_result_file, after_graph_result_file, transformation_file)
    
    
    
    if False:
        plt.hist(df['objective'], bins=25)
        plt.xlabel('objective')
        plt.ylabel('Frequency')
        plt.title('Distribution of objective')
        plt.savefig('./figure/objective_distribution.pdf')
        plt.close()
        
        
        
        plt.hist(df['solve time'], bins=50)
        plt.xlabel('Solving time (sec)')
        plt.ylabel('Frequency')
        plt.title('Distribution of the solving time')
        plt.savefig('./figure/solve_time_distribution.pdf')
        plt.close()
        
        
        
            
        matching_rows = df[df['file'].str.contains('000000')]    
        _, original_optimal, original_solve_time, original_preprocess_time, original_n_vertex, original_n_edge = matching_rows.values[0]
        
        # graphique
        df['optimal_ratio'] = df['objective']/original_optimal # x
        df['n_edge_ratio'] = df['number edge']/original_n_edge #y
        df['n_vertex_ratio'] = df['number vertex']/original_n_vertex # y
        
        
        plt.scatter(df['optimal_ratio'], df['n_vertex_ratio'])
        plt.xlabel('Optimal Ratio')
        plt.ylabel('Number of Vertices Ratio')
        plt.title('Optimal Ratio vs. Number of Vertices Ratio')
        plt.savefig('./figure/optimal_ratio_vs_n_vertex_ratio.pdf')
        plt.close()
        
        
        plt.scatter(df['optimal_ratio'], df['n_edge_ratio'])
        plt.xlabel('Optimal Ratio')
        plt.ylabel('Number of Edges Ratio')
        plt.title('Optimal Ratio vs. Number of Edges Ratio')
        plt.savefig('./figure/optimal_ratio_vs_n_edge_ratio.pdf')
        plt.close()
    
    
    
    
# 1) Generer des probleme
#python src/python/main.py option5 5-1 \
# --num_partitions 10000 \
# --max_sub_length 2 \
# --input_file './data/from_github/problems/progressive-delaunay/d30-06-10.json' \
# --export_folder_problems './other/result_processing/graphs/d30-06-10' \
# --export_folder_transformations './other/result_processing/transformations/d30-06-10' \
# --verbose true

# 2) Generer la grille de calcul julia en batch de 500
# python src/python/main.py option3 3-3 \
# --input_folder './other/result_processing/graphs/d30-06-10' \
# --export_folder_grid './tmp' \
# --export_folder_results './other/result_processing/results/d30-06-10' \
# --output_filename 'compute_grid_julia_500_d30-06-10' \
# --batch_size 500 \
# --verbose true

# 3) Process la grille de calcul de julia
#python src/python/main.py option4 --input_file './tmp/compute_grid_julia_500_d30-06-10.txt' --n_core 1 --verbose true


# 3) Genere la grille de calcul du result processing et les batchs
#python src/python/main.py option3 3-5 \
#--input_folder_graphs './other/result_processing/graphs/d30-06-10' \
#--input_folder_transformations './other/result_processing/transformations/d30-06-10' \
#--input_folder_results './other/result_processing/results/d30-06-10' \
#--export_folder_grid './tmp' \
#--export_folder_results './other/result_processing/result_process/d30-06-10' \
#--output_filename 'compute_grid_process_result_d30-06-10' \
#--batch_size 100 \
#--verbose true

# 4) Process 
#python src/python/main.py option4 --input_file './tmp/compute_grid_process_result_d30-06-10.txt' --n_core 1 --verbose false

# 5) Generer la grille de calcul de stacking en dataframe batch et les batchs
#python src/python/main.py option3 3-7 \
#    --input_folder_processed_results './other/result_processing/result_process/d30-06-10' \
#    --export_folder_dataframes './tmp' \
#    --export_folder_grid './tmp' \
#    --output_filename 'compute_grid_stack_result' \
#    --batch_size 100 \
#    --verbose false


# 6) Process
#python src/python/main.py option4 --input_file './tmp/compute_grid_stack_result.txt' --n_core 1 --verbose false
