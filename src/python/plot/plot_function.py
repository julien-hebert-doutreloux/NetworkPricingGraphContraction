from preamble.preamble import *

def time_vs_amount_partition():
    times = []
    param_values = [1, 5,10, 50, 100, 250, 500, 1000, 1500, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000, 15000, 20000, 25000] 
    for i in param_values:
        st = time.time()
        partitions = random_partition(test_rules, number_or_partition=i, max_len=-1)
        ft = time.time()
        times.append(ft-st)
        print(f"{round(ft-st, 6)} sec to generate {i} distinct partition")

    plt.plot(param_values, times)
    plt.xlabel('Parameter value')
    plt.ylabel('Time (s)')
    plt.title('Time vs. amount of find partition at random')
    plt.savefig('figure/time_to_find_partition.pdf', bbox_inches='tight')

def max_clique_time_and_lenght_distribution(option=0):
        
    # Load the data from the Excel file
    data_nx = pd.read_csv('other/d50-12-10_nx_max_clique_approx.txt', sep='\t')
    data_my = pd.read_csv(f'other/d50-12-10_my_max_clique_approx_{option}.txt', sep='\t')

    nx_time = data_nx['time']
    nx_lenght = data_nx['lenght']
    nx_iteration = data_nx['iteration']    
    
    my_time = data_my['time']
    my_lenght = data_my['lenght']
    my_iteration = data_my['iteration']

    # Create a figure with a 2x2 grid of subplots
    fig, axs = plt.subplots(2, 2, figsize=(10,10))

    # Plot data on each subplot
    bin_edges = np.arange( min(np.min(nx_lenght), np.min(my_lenght)), max(np.max(nx_lenght), np.max(my_lenght))+ 2, 1)
    axs[0, 0].hist(nx_lenght, bins=bin_edges)
    axs[0, 0].set_xlabel('lenght')
    axs[0, 0].set_ylabel('Frequency')
    axs[0, 0].set_title('Distribution of max_clique lenght for NX')

    axs[0, 1].hist(nx_time, bins='auto')
    axs[0, 1].set_xlabel('time')
    axs[0, 1].set_ylabel('Frequency')
    axs[0, 1].set_title('Distribution of max_clique time for NX')

    # Plot data on each subplot
    axs[1, 0].hist(my_lenght, bins=bin_edges)
    axs[1, 0].set_xlabel('lenght')
    axs[1, 0].set_ylabel('Frequency')
    axs[1, 0].set_title('Distribution of max_clique lenght for MY')

    axs[1, 1].hist(my_time, bins='auto')
    axs[1, 1].set_xlabel('time')
    axs[1, 1].set_ylabel('Frequency')
    axs[1, 1].set_title('Distribution of max_clique time for MY')

    plt.savefig(f'figure/comparaison_distribution_{option}.pdf', bbox_inches='tight')
