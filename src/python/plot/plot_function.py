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
                            ax=None,
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
    df = df.drop(f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}')
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
    df = df.drop(f'000000-000000-0-0-0-0-0-0-0-0-0-{pb_name}')
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

    
def density_kdeplot(
                    data,
                    x_,
                    crosshairs:tuple,
                    fig_x_size:int=15,
                    fig_y_size:int=15,
                    ticks_font_size:int=16,
                    label_font_size:int=22,
                    title_font_size:int=26,
                    legend_font_size:int=18,
                    legend:bool=True,
                    x_label:str='',
                    title:str='',
                    fig=None,
                    ax=None,
                    **kwargs
                ):

    if not ax or not fig:
        fig, ax = plt.subplots(figsize=(fig_x_size, fig_y_size))
    
    classes = data['Class'].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
    
    sns.kdeplot(
        data=data,
        x=x_,
        hue='Class',
        hue_order=classes_order,
        ax=ax,
        legend=legend
    )
    ax.axvline(x=crosshairs[0], color='red', linestyle='--')

    # Config
    ax.set_xlabel(x_label, fontsize=label_font_size)
    ax.tick_params(axis='x', labelsize=ticks_font_size)
    
    ax.set_ylabel('Density', fontsize=label_font_size)
    ax.tick_params(axis='y', labelsize=ticks_font_size)
    
    ax.set_title(title, fontsize=title_font_size)
    
    if legend:
        legend = ax.get_legend()
        legend.set_title('Class', prop={'size': legend_font_size+1})
        # set the fontsize of the legend
        for text in legend.get_texts():
            text.set_fontsize(legend_font_size)
            
    plt.tight_layout()
    return fig

def boxplot_plot(
                    data,
                    x_,
                    yclass_,
                    crosshairs:tuple,
                    fig_x_size:int=15,
                    fig_y_size:int=15,
                    ticks_font_size:int=16,
                    label_font_size:int=22,
                    title_font_size:int=26,
                    legend_font_size:int=18,
                    legend:bool=False,
                    x_label:str='',
                    title:str='',
                    xrange:tuple=tuple(),
                    fig=None,
                    ax=None,
                    **kwargs
                ):

    if not ax or not fig:
        fig, ax = plt.subplots(figsize=(fig_x_size, fig_y_size))
    
        
    classes = data[yclass_].unique()
    classes_order = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))

    sns.boxplot(
        x=x_,
        y=yclass_,
        data=data,
        order=classes_order,
        ax=ax,
        )
    ax.axvline(x=crosshairs[0], color='red', linestyle='--')

    # Config
    ax.set_xlabel(x_label, fontsize=label_font_size)
    ax.tick_params(axis='x', labelsize=ticks_font_size)
    
    #ax.set_ylabel('Density', fontsize=label_font_size)
    ax.set_ylabel('Class', fontsize=label_font_size)
    ax.tick_params(axis='y', labelsize=ticks_font_size)
    
    ax.set_title(title, fontsize=title_font_size)
    counts = data[yclass_].value_counts()

    if xrange:
        # Set x-axis limits
        ax.set_xlim(*xrange)
        
    if legend:
        for i, class_ in enumerate(classes_order):
            ax.text(
                1.02,  # x position (just beyond the right side of the plot)
                i,  # y position (corresponding to each class)
                f'N={counts[class_]}',  # the text to display
                verticalalignment='center',
                fontsize=ticks_font_size,
                transform=ax.get_yaxis_transform()
            )
    #if legend:
    #    legend = ax.get_legend()
    #    legend.set_title('Class', prop={'size': legend_font_size+1})
    #    # set the fontsize of the legend
    #    for text in legend.get_texts():
    #        text.set_fontsize(legend_font_size)
            
    plt.tight_layout()
    return fig



def x_y_scatterplot(
                    df,
                    crosshairs:tuple,
                    x_:str, y_:str,
                    fig_x_size:int=15, fig_y_size:int=15,
                    ticks_font_size:int=16,
                    label_font_size:int=22,
                    title_font_size:int=26,
                    legend_font_size:int=18,
                    x_label:str='', y_label:str='',
                    title:str='',
                ):

    df = df.copy()
    fig, ax = plt.subplots(figsize=(fig_x_size, fig_y_size))
    
    # Plot with H4
    classes = df['Class'].unique()
    classes = sorted(classes, key=lambda x: list(map(int, x.split('-')[:3])))
        
    for class_value in classes:
        class_data = df[df['Class'] == class_value]
        sns.scatterplot(
            x=x_,
            y=y_,
            data=class_data,
            label=f'{class_value}',
            ax=ax,
        )
        
    ax.axvline(x=crosshairs[0], color='red', linestyle='--')
    ax.axhline(y=crosshairs[1], color='red', linestyle='--')
    
    # Config
    ax.set_xlabel(x_label, fontsize=label_font_size)
    ax.tick_params(axis='x', labelsize=ticks_font_size)
    
    ax.set_ylabel(y_lable, fontsize=label_font_size)
    ax.tick_params(axis='y', labelsize=ticks_font_size)
    
    ax.set_title(title, fontsize=title_font_size)

    legend = ax.get_legend()
    legend.set_title('Class', prop={'size': legend_font_size+1})
    
    # set the fontsize of the legend
    for text in legend.get_texts():
        text.set_fontsize(legend_font_size)

    return fig




def correlation_matrix(
                        df,
                        columns,
                        fig_x_size:int=15, fig_y_size:int=15,
                        ticks_font_size:int=16,
                        label_font_size:int=22,
                        title_font_size:int=26,
                        legend_font_size:int=18,
                        title:str='',
                        fig=None,
                        ax=None,
                        **kwargs
                    ):
    if not ax or not fig:
        fig, ax = plt.subplots(figsize=(fig_x_size, fig_y_size))
    

    # Calculate the correlation matrix
    corr_matrix = df[columns].corr()
    
    
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
    
    ax.set_title(title, fontsize=title_font_size);
    plt.tight_layout()
    return fig
