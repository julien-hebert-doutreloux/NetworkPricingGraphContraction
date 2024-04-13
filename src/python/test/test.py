from preamble.preamble import *
from gamma.common import from_json, set_of_frozenset
from unit_test.tools import timing_decorator, unit_test_decorator
from plot.plot_graph import plot_graph, old_plot_graph
from test.shortest_path_rewind import shortest_path_rewind
from test.result_processing import process_result_before_vs_after
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
def main():

    # julia src/julia/script.jl './other/result_processing/graphs/d30-06-10/000089-NPP-d30-06-10.json' './other/result_processing/results/d30-06-10/000089-NPP-d30-06-10-RR.json'
    if False:
        # Grille de calcul pour la resolution
        command1 = """python src/python/main.py option3 3-3 \
        --input_folder './other/result_processing/graphs/d30-06-10' \
        --export_folder_grid './tmp' \
        --export_folder_results './other/result_processing/results/d30-06-10' \
        --output_filename 'compute_grid_julia_d30-06-10' \
        --batch_size 100
        """
        
        # Process la grille de calcul
        command2 = """python src/python/main.py option4 \
        --input_file './tmp/compute_grid_julia_d30-06-10.txt' \
        --n_core 1
        """
        
    if False:
        # Grille de calcul pour le raw result process 
        command3 =  """python src/python/main.py option3 3-5 \
        --input_folder_graphs './other/result_processing/graphs/d30-06-10' \
        --input_folder_transformations './other/result_processing/transformations/d30-06-10' \
        --input_folder_results './other/result_processing/results/d30-06-10' \
        --export_folder_grid './tmp' \
        --export_folder_results './other/result_processing/result_process/d30-06-10' \
        --output_filename 'compute_grid_process_result_d30-06-10' \
        --batch_size 100
        """
        # Process la grille de calcul
        command4 = """python src/python/main.py option4 \
        --input_file './tmp/compute_grid_process_result_d30-06-10.txt' \
        --n_core 1
        """
        for command in [command3, command4]:
            process = subprocess.Popen(command.strip(), shell=True, stdout=sys.stdout, stderr=subprocess.STDOUT)
            process.wait()
            
    if False:
        # Grille de calcul pour stacking
        command5 = """python src/python/main.py option3 3-7 \
        --input_folder_processed_results './other/result_processing/result_process/d30-06-10' \
        --export_folder_dataframes './tmp' \
        --export_folder_grid './tmp' \
        --output_filename 'compute_grid_stack_result_d30-06-10' \
        --batch_size 100
        """
        # Process la grille de calcul
        command6 = """python src/python/main.py option4 \
        --input_file './tmp/compute_grid_stack_result_d30-06-10.txt' \
        --n_core 1
        """
        for command in [command5, command6]:
            process = subprocess.Popen(command.strip(), shell=True, stdout=sys.stdout, stderr=subprocess.STDOUT)
            process.wait()
    
    
    filepath = './tmp/edge_dataframe.pkl'
    filepath = './tmp/meta_dataframe.pkl'
    df = pd.read_pickle(filepath)
    if False:
        # Check the correspondance between edge index of the original graph and reverse edge index from the transform graph
        # Compare if the columns are equal element-wise
        equal_columns = df['edge'] == df['edge_ref']
        # Check if all elements are True (i.e., the columns are always equal)
        all_equal = equal_columns.all()
        print("The columns are always equal:", all_equal)
        
        print(df)
        means_opt_value = []
        means_opt_flow = []
        for edge in df['edge'].unique():
            group_df = df[df['edge']==edge].dropna()
            group_statistics = group_df[['opt. value', 'opt. flow', '(opt. value)', '(opt. flow)']].describe()
            #print(f"\nStatistics for group '{edge}':")
            #print(group_statistics)
            means_opt_value.append(group_df['opt. value'].mean() - group_df['(opt. value)'].mean())
            means_opt_flow.append(group_df['opt. flow'].mean() - group_df['(opt. flow)'].mean())
        
        plt.hist(means_opt_value, bins=30)
        plt.xlabel('Value')
        plt.ylabel('Frequency Density')
        plt.title('Distribution of the mean difference between opt. value and mean{(opt. value)}')
        plt.grid(True)
        plt.savefig('./figure/mean_difference_opt_value_distribution.pdf')
        plt.close()
        
        
        plt.hist(means_opt_flow, bins=30)
        plt.xlabel('Value')
        plt.ylabel('Frequency Density')
        plt.title('Distribution of the mean difference between opt. flow and mean{(opt. flow)}')
        plt.grid(True)
        plt.savefig('./figure/mean_difference_opt_flow_distribution.pdf')
        plt.close()
    
    
    
    
    
    
    
    matching_rows = df[df['file'].str.contains('000000')]    
    original_problem_data = matching_rows.iloc[0].to_dict()
    #('file', '000000-NPP-d30-06-10-PR')
    #('objective', 288848.0017616278)
    #('solve time', 101.974749989)
    #('preprocess time', 0.946727697)
    #('number vertex', 176)
    #('number edge', 36)
    #('rewind optimal', 288848.0)
    #('rewind time', 0.05017518997192383)
    #('c.-f.1', 1.0)
    #('c.-f.2', 1.0)
    #('c.-f.3', 1.0)
    #('c.-f.4', 1.0)
    #('c.-f.5', 2.0)
    #('c.-f.6', 2.0)
    #('c.-f.7', 2.0)
    #('c.-f.8', 2.0)
    #('c.-f.9', 4.0)

    if True:
        # setting
        ticks_font_size  = 16
        label_font_size  = 22
        title_font_size  = 26
        legend_font_size = 18
        
        fig_x_size = 15
        fig_y_size = 15
        # graphique
        df['optimal_ratio'] = df['objective']/original_problem_data['objective']         # x
        df['edge_ratio'] = df['number edge']/original_problem_data['number edge']        # y
        df['vertex_ratio'] = df['number vertex']/original_problem_data['number vertex']  # y
        
        # Determine the ranges automatically using pd.cut
        bins = pd.cut(df['objective'], bins=5)
        categories = bins.astype(str)  # Convert bins to strings
        # Assign the categories directly
        df['Category'] = categories

        
        # kdeplot optimal_ratio vs vertex_ratio
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='optimal_ratio', y='vertex_ratio', fill=True, alpha=.75, cbar=True, cmap="rocket_r")
        plt.xlabel('Optimal Ratio', fontsize=label_font_size)
        plt.ylabel('Vertex Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Optimal Ratio vs. Vertex Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/optimal_ratio_vs_vertex_ratio.pdf',  bbox_inches='tight')
        plt.close()
        
        #kdeplot optimal_ratio vs edge_ratio
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='optimal_ratio', y='edge_ratio', fill=True, alpha=.75, cbar=True, cmap="rocket_r")
        plt.xlabel('Optimal Ratio', fontsize=label_font_size)
        plt.ylabel('Edge Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Optimal Ratio vs. Edge Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/optimal_ratio_vs_edge_ratio.pdf',  bbox_inches='tight')
        plt.close()
        
        # kdeplot optimal_ratio vs edge_ratio
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='vertex_ratio', y='edge_ratio', fill=True, alpha=.75, cbar=True, cmap="rocket_r")
        plt.xlabel('Vertex Ratio', fontsize=label_font_size)
        plt.ylabel('Edge Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Vertex Ratio vs. Edge Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/vertex_ratio_vs_edge_ratio.pdf',  bbox_inches='tight')
        plt.close()
        
        
        # kdeplot optimal_ratio vs edge_ratio vs range
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        kde_plot = sns.kdeplot(df, x='vertex_ratio', y='edge_ratio', fill=True, hue='Category', alpha=.25, palette="mako", legend=True)
        plt.xlabel('Vertex Ratio', fontsize=label_font_size)
        plt.ylabel('Edge Ratio', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Vertex Ratio vs. Edge Ratio (count density)', fontsize=title_font_size)
        plt.savefig('./figure/vertex_ratio_vs_edge_ratio_hue_category.pdf',  bbox_inches='tight')
        plt.close()
        
        
        






        # Objective distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['objective'], bins=25)
        plt.axvline(x=original_problem_data['objective'], color='red', linestyle='--')
        plt.xlabel('objective', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of objective in the transformed space', fontsize=title_font_size)
        plt.savefig('./figure/objective_distribution_after.pdf',  bbox_inches='tight')
        plt.close()
        
        # Rewind objective distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['rewind optimal'], bins=25)
        plt.axvline(x=original_problem_data['rewind optimal'], color='red', linestyle='--')
        plt.xlabel('objective', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of objective rewind (option distributivity)', fontsize=title_font_size)
        plt.savefig('./figure/objective_distribution_before_rewind_after.pdf',  bbox_inches='tight')
        plt.close()
        
        
        
        
        
        # Solve time in transformed space distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['solve time'] + df['preprocess time'], bins=50)
        plt.axvline(x=original_problem_data['solve time'] + original_problem_data['preprocess time'], color='red', linestyle='--')
        plt.xlabel('Solving time (sec)', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of the solving time in the transformed space', fontsize=title_font_size)
        plt.savefig('./figure/solve_time_distribution_transformed_space.pdf',  bbox_inches='tight')
        plt.close()
        
        # Solve time from the transformed space to original space distribution
        plt.figure(figsize=(fig_x_size, fig_y_size)) 
        plt.hist(df['rewind time'], bins=50)
        plt.axvline(x=original_problem_data['rewind time'], color='red', linestyle='--')
        plt.xlabel('Solving time (sec)', fontsize=label_font_size)
        plt.ylabel('Frequency', fontsize=label_font_size)
        plt.xticks(fontsize=ticks_font_size)
        plt.yticks(fontsize=ticks_font_size)
        plt.title('Distribution of the rewind evaluation time', fontsize=title_font_size)
        plt.savefig('./figure/solve_time_distribution_rewind.pdf',  bbox_inches='tight')
        plt.close()
        
        

        
        # Select the two variables of interest
        var1 = 'optimal_ratio'
        var2 = 'vertex_ratio'

        # Calculate the correlation matrix for the two variables
        corr_matrix = df[[var1, var2]].corr()

        # Create the heatmap
        sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')

        # Add labels and title
        plt.xlabel('')
        plt.ylabel('')
        plt.title(f'Correlation Heatmap between {var1} and {var2}')

        # Save the figure
        plt.savefig(f'./figure/correlation_heatmap_{var1}_{var2}.pdf')
        plt.close()
        
        # Select the two variables of interest
        var1 = 'optimal_ratio'
        var2 = 'edge_ratio'

        # Calculate the correlation matrix for the two variables
        corr_matrix = df[[var1, var2]].corr()

        # Create the heatmap
        sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')

        # Add labels and title
        plt.xlabel('')
        plt.ylabel('')
        plt.title(f'Correlation Heatmap between {var1} and {var2}')

        # Save the figure
        plt.savefig(f'./figure/correlation_heatmap_{var1}_{var2}.pdf')
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
