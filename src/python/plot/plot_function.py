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
    
    
    
    
    
    
    
    
    
# Freedman-Diaconis rule to find bins value
def freedman_diaconis_rule(data):
    h = 2 * (np.quantile(data, 0.75) - np.quantile(data, 0.25)) * len(data)**(-1/3)
    bins = int(np.ceil((max(data) - min(data)) / h))
    return int(bins)


## Basic plots
def edge_edge_variance_histplot(
                                df,
                                pb_name:str,
                                fig_x_size:int=15,
                                fig_y_size:int=15,
                                ticks_font_size:int=16,
                                label_font_size:int=22,
                                title_font_size:int=26,
                                legend_font_size:int=18,
                               ):
    
    fig = plt.figure(figsize=(fig_x_size, fig_y_size))
    ax = fig.add_subplot(111)

    # (Edge) - Edge variance
    variance = [
        np.var(df.T[col] - df[f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}'][col])
        for col in df.T.columns
    ]
    # plots
    sns.histplot(variance, bins=freedman_diaconis_rule(variance), kde=False, ax=ax);
    ax.axvline(x=0, color='red', linestyle='--');
    
    # Config
    ax.set_xlabel('Variance', fontsize=label_font_size);
    ax.tick_params(axis='x', labelsize=ticks_font_size);
    
    ax.set_ylabel('Frequency', fontsize=label_font_size);
    ax.tick_params(axis='y', labelsize=ticks_font_size);
    
    ax.set_title("(Edge) - Edge variance", fontsize=title_font_size);
    
    return fig

def edge_edge_mean_histplot(
                            df,
                            pb_name:str,
                            fig_x_size:int=15,
                            fig_y_size:int=15,
                            ticks_font_size:int=16,
                            label_font_size:int=22,
                            title_font_size:int=26,
                            legend_font_size:int=18,
                           ):
    
    fig = plt.figure(figsize=(fig_x_size, fig_y_size))
    ax = fig.add_subplot(111)

    # (Edge) - Edge mean
    mean = [
        np.mean(df.T[col] - df[f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}'][col])
        for col in df.T.columns
    ]
    sns.histplot(mean, bins=freedman_diaconis_rule(mean), kde=False, ax=ax)
    ax.axvline(x=0, color='red', linestyle='--')


    # Config
    ax.set_xlabel('Mean', fontsize=label_font_size);
    ax.tick_params(axis='x', labelsize=ticks_font_size);
    
    ax.set_ylabel('Frequency', fontsize=label_font_size);
    ax.tick_params(axis='y', labelsize=ticks_font_size);
    
    ax.set_title("(Edge) - Edge mean", fontsize=title_font_size);    
    return fig

def flow_flow_variance_histplot(
                                df,
                                pb_name:str,
                                fig_x_size:int=15,
                                fig_y_size:int=15,
                                ticks_font_size:int=16,
                                label_font_size:int=22,
                                title_font_size:int=26,
                                legend_font_size:int=18,
                               ):
    
    fig = plt.figure(figsize=(fig_x_size, fig_y_size))
    ax = fig.add_subplot(111)
    
    # (Flow) - Flow variance
    variance = [
        np.var(df.T[col] - df[f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}'][col])
        for col in df.T.columns
    ]
    sns.histplot(variance, bins=freedman_diaconis_rule(variance), kde=False, ax=ax)
    ax.axvline(x=0, color='red', linestyle='--')
    
    # Config
    ax.set_xlabel('Variance', fontsize=label_font_size);
    ax.tick_params(axis='x', labelsize=ticks_font_size);
    
    ax.set_ylabel('Frequency', fontsize=label_font_size);
    ax.tick_params(axis='y', labelsize=ticks_font_size);
    
    ax.set_title("(Flow) - Flow variance", fontsize=title_font_size);    
    return fig

def flow_flow_mean_histplot(
                            df,
                            pb_name:str,
                            fig_x_size:int=15,
                            fig_y_size:int=15,
                            ticks_font_size:int=16,
                            label_font_size:int=22,
                            title_font_size:int=26,
                            legend_font_size:int=18,
                           ):
    fig = plt.figure(figsize=(fig_x_size, fig_y_size))
    ax = fig.add_subplot(111)
    
    # (Flow) - Flow mean
    mean = [
        np.mean(df.T[col] - df[f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}'][col])
        for col in df.T.columns
    ]
    sns.histplot(mean, bins=freedman_diaconis_rule(mean), kde=False)
    plt.axvline(x=0, color='red', linestyle='--')
    
    # Config
    ax.set_xlabel('Mean', fontsize=label_font_size);
    ax.tick_params(axis='x', labelsize=ticks_font_size);
    
    ax.set_ylabel('Frequency', fontsize=label_font_size);
    ax.tick_params(axis='y', labelsize=ticks_font_size);
    
    ax.set_title("(Flow) - Flow mean", fontsize=title_font_size);    
    return fig
    
def objective_objective_histplot(
                                df,
                                pb_name:str,
                                fig_x_size:int=15,
                                fig_y_size:int=15,
                                ticks_font_size:int=16,
                                label_font_size:int=22,
                                title_font_size:int=26,
                                legend_font_size:int=18,
                               ):

    fig = plt.figure(figsize=(fig_x_size, fig_y_size))
    ax = fig.add_subplot(111)

    # (Objective) - Objective
    o_obj = 0
    obj = df['obj_value'] - df['obj_value'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    sns.histplot(obj, bins=freedman_diaconis_rule(obj), kde=False, ax=ax)
    ax.axvline(x=o_obj, color='red', linestyle='--')
    
    # Config
    ax.set_xlabel('(obj)-obj', fontsize=label_font_size);
    ax.tick_params(axis='x', labelsize=ticks_font_size);
    
    ax.set_ylabel('Frequency', fontsize=label_font_size);
    ax.tick_params(axis='y', labelsize=ticks_font_size);
    
    ax.set_title("(Objective) - Objective", fontsize=title_font_size);    
    return fig

def time_histplot(
                    df,
                    pb_name:str,
                    fig_x_size:int=15,
                    fig_y_size:int=15,
                    ticks_font_size:int=16,
                    label_font_size:int=22,
                    title_font_size:int=26,
                    legend_font_size:int=18,
                   ):

    fig = plt.figure(figsize=(fig_x_size, fig_y_size))
    ax = fig.add_subplot(111)
    
    # (Time)
    o_time = df['solve_time'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    time_ = df['solve_time']
    sns.histplot(time_, bins=freedman_diaconis_rule(time_), kde=False, ax=ax)
    ax.axvline(x=o_time, color='red', linestyle='--')
    
    # Config
    ax.set_xlabel('Time (sec)', fontsize=label_font_size);
    ax.tick_params(axis='x', labelsize=ticks_font_size);
    
    ax.set_ylabel('Frequency', fontsize=label_font_size);
    ax.tick_params(axis='y', labelsize=ticks_font_size);
    
    ax.set_title("(Time)", fontsize=title_font_size);    
    return fig
    
def advance_plots(
                    df,
                    pb_name,
                    fig_x_size:int=15,
                    fig_y_size:int=15,
                    ticks_font_size:int=16,
                    label_font_size:int=22,
                    title_font_size:int=26,
                    legend_font_size:int=18
                ):


    # (0,0) with H4 - (Objective)/Objective
    # (0,1) with H4 - Time density
    # (1,0) Without H4 - (Objective)/Objective
    # (1,1) Without H4 - Time density
    df = df.copy()
    ## Advance plots
    o_time = df['solve_time'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']	
    o_obj = df['obj_value'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    
    columns = ['min_sl', 'max_sl', 'm', 'H4']
    df['Class'] = df[columns].astype(str).apply('-'.join, axis=1)
    df['optimal_ratio'] = df['obj_value']/o_obj
        
    fig, axes = plt.subplots(nrows=2, ncols=2, figsize=(fig_x_size, fig_y_size))
    
    # With H4 - (Objective)/Objective
    classes = df[df['H4'] == 1]['Class'].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    sns.kdeplot(
        data=df[df['H4']==1],
        x='optimal_ratio',
        hue='Class',
        hue_order=classes_order,
        ax=axes[0, 0],
        legend=False
    )
    axes[0, 0].axvline(x=1, color='red', linestyle='--')
    

    # With H4 - Time density
    solve_time_min = df['solve_time'].min()
    solve_time_max = df['solve_time'].max()
    
    classes = df[df['H4'] == 1]['Class'].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    sns.kdeplot(
        data=df[df['H4']==1],
        x='solve_time',
        hue='Class',
        hue_order=classes_order,
        ax=axes[0, 1],
        clip=(solve_time_min, solve_time_max),
        legend=True
    )
    axes[0, 1].axvline(x=o_time, color='red', linestyle='--')
    
    
    # Without H4 - (Objective)/Objective
    classes = df[df['H4'] == 0]['Class'].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    sns.kdeplot(
        data=df[df['H4']==0],
        x='optimal_ratio',
        hue='Class',
        hue_order=classes_order,
        ax=axes[1, 0],
        legend=False
    )
    axes[1, 0].axvline(x=1, color='red', linestyle='--');

    
    # Without H4 - Time density
    classes = df[df['H4'] == 0]['Class'].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    sns.kdeplot(
        data=df[df['H4']==0],
        x='solve_time',
        hue='Class',
        hue_order=classes_order,
        ax=axes[1, 1],
        clip=(solve_time_min, solve_time_max),
        legend=True
    )
    axes[1, 1].axvline(x=o_time, color='red', linestyle='--');


    # Config
    axes[0, 0].set_xlabel('Optimal ratio', fontsize=label_font_size);
    axes[0, 0].tick_params(axis='x', labelsize=ticks_font_size);
    axes[0, 0].set_ylabel('Density', fontsize=label_font_size);
    axes[0, 0].tick_params(axis='y', labelsize=ticks_font_size);
    axes[0, 0].set_title('(Objective)/Objective with H4', fontsize=title_font_size);
    
    # Config
    axes[0, 1].set_xlabel('Time (sec)', fontsize=label_font_size);
    axes[0, 1].tick_params(axis='x', labelsize=ticks_font_size);
    axes[0, 1].set_ylabel('', fontsize=label_font_size);
    axes[0, 1].tick_params(axis='y', labelsize=ticks_font_size);
    axes[0, 1].set_title('Time with H4', fontsize=title_font_size);

    legend = axes[0, 1].get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)

    
    # Config
    axes[1, 0].set_xlabel('Optimal ratio', fontsize=label_font_size);
    axes[1, 0].tick_params(axis='x', labelsize=ticks_font_size);
    axes[1, 0].set_ylabel('Density', fontsize=label_font_size);
    axes[1, 0].tick_params(axis='y', labelsize=ticks_font_size);
    axes[1, 0].set_title('(Objective)/Objective without H4', fontsize=title_font_size);

    # Config
    axes[1, 1].set_xlabel('Time (sec)', fontsize=label_font_size);
    axes[1, 1].tick_params(axis='x', labelsize=ticks_font_size);
    axes[1, 1].set_ylabel('', fontsize=label_font_size);
    axes[1, 1].tick_params(axis='y', labelsize=ticks_font_size);
    axes[1, 1].set_title('Time without H4', fontsize=title_font_size);


    legend = axes[1, 1].get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)
    
    plt.tight_layout()
    return fig

def optimal_ratio_vs_time(
                        df,
                        pb_name,
                        fig_x_size:int=15,
                        fig_y_size:int=15,
                        ticks_font_size:int=16,
                        label_font_size:int=22,
                        title_font_size:int=26,
                        legend_font_size:int=18,
                        log_option:bool=False
                    ):

    df = df.copy()
    o_time = df['solve_time'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    o_obj = df['obj_value'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    o_time = np.log(o_time) if log_option else o_time
    
    columns = ['min_sl', 'max_sl', 'm', 'H4']
    df['Class'] = df[columns].astype(str).apply('-'.join, axis=1)
    
    df['optimal_ratio'] = df['obj_value']/o_obj
    df['solve_time'] = np.log(df['solve_time']) if log_option else df['solve_time']
    
    
    fig, axes = plt.subplots(nrows=1, ncols=2, figsize=(fig_x_size, fig_y_size))
    
    # Plot with H4
    classes = df[df['H4'] == 1]['Class'].unique()
    classes = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    for class_value in classes:
        class_data = df[(df['Class'] == class_value) & (df['H4'] == 1)]
        sns.scatterplot(
            x='optimal_ratio',
            y='solve_time',
            data=class_data,
            label=f'{class_value}',
            ax=axes[0]
        )
    axes[0].axhline(y=o_time, color='red', linestyle='--')
    axes[0].axvline(x=1, color='red', linestyle='--')
    
    
    # Plot without H4
    classes = df[df['H4'] == 0]['Class'].unique()
    classes = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    for class_value in classes:
        class_data = df[(df['Class'] == class_value) & (df['H4'] == 0)]
        sns.scatterplot(
            x='optimal_ratio',
            y='solve_time',
            data=class_data,
            label=f'{class_value}',
            ax=axes[1]
        )
    axes[1].axhline(y=o_time, color='red', linestyle='--')
    axes[1].axvline(x=1, color='red', linestyle='--')

    y_label = 'Solve Time (log sec)' if log_option else 'Solve Time (sec)'
    # Config
    axes[0].set_xlabel('Optimal Ratio', fontsize=label_font_size);
    axes[0].tick_params(axis='x', labelsize=ticks_font_size);
    axes[0].set_ylabel(y_label, fontsize=label_font_size);
    axes[0].tick_params(axis='y', labelsize=ticks_font_size);
    axes[0].set_title('Optimal Ratio vs. Solve Time by Class (H4=1)', fontsize=title_font_size);

    legend = axes[0].get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)

    # Config
    axes[1].set_xlabel('Optimal Ratio', fontsize=label_font_size);
    axes[1].tick_params(axis='x', labelsize=ticks_font_size);
    axes[1].set_ylabel(y_label, fontsize=label_font_size);
    axes[1].tick_params(axis='y', labelsize=ticks_font_size);
    axes[1].set_title('Optimal Ratio vs. Solve Time by Class (H4=0)', fontsize=title_font_size);

    legend = axes[1].get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)
    
    
    plt.tight_layout()
    return fig
    
def correlation_matrix(
                        df,
                        pb_name:str,
                        fig_x_size:int=15,
                        fig_y_size:int=15,
                        ticks_font_size:int=16,
                        label_font_size:int=22,
                        title_font_size:int=26,
                        legend_font_size:int=18,
                    ):
                    
    df = df.copy()      
    o_obj = df['obj_value'][f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}']
    df['optimal_ratio'] = df['obj_value']/o_obj
    # Calculate the correlation matrix
    corr_matrix = df[['optimal_ratio', 'solve_time', 'min_sl', 'max_sl', 'm', 'H4']].corr()
    
    
    # Create a heatmap of the correlation matrix
    fig, ax = plt.subplots(figsize=(fig_x_size, fig_y_size))
    
    sns.heatmap(
        data=corr_matrix,
        annot=True,
        fmt=".2f",
        cmap="coolwarm",
        annot_kws={'fontsize': ticks_font_size},
        linewidths=0.5,
        ax=ax
    )
    
    # Customize the plot

    cbar = ax.collections[0].colorbar
    # here set the labelsize by 20
    cbar.ax.tick_params(labelsize=label_font_size)
    
    ax.set_xticklabels(ax.get_xticklabels(), rotation=45, ha='right', fontsize=label_font_size);
    ax.tick_params(axis='x', labelsize=ticks_font_size);
    
    ax.set_yticklabels(ax.get_yticklabels(), rotation=45, ha='right', fontsize=label_font_size);
    ax.tick_params(axis='y', labelsize=ticks_font_size);
    
    ax.set_title('Correlation Matrix', fontsize=title_font_size);
    plt.tight_layout()
    return fig
