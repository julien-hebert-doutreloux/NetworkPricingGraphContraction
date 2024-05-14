## How to use main.py

### Option 1 - unit_test
Run this command to verify every modules is working as intended:
```
    $ python src/main.py option1
```
It is possible that the Rules module isn't working if it was change. If there is changes in the rules.make_rules() function, please make sure to reflect those changes into the ```unit_test.unit_test_rules.py```



### Option 2 - test_approx_max_clique.py
To get information about this script:
```
    $ python src/main.py option2 --help
```

To in parallel with the parallel (2 cores in the following example) package
```
    $ seq 10 | parallel -j 2 python src/main.py 2 -f 'path_to_your_json' -o 1 -i {} -e 'export_path'
```

Package *parallel* references:
Tange, O. (2023, August 22). GNU Parallel 20230822 ('Chandrayaan').
Zenodo. https://doi.org/10.5281/zenodo.8278274

To watch in real time single tread without write out the result
```
    $ watch -n 1 python src/main.py 2 -f 'path_to_your_json' -o 1 -i 1
```


### Option 3 - Compute grid
The compute grid is a txt file with bash terminal commands like this
```
python script.py args1
python script.py args2
python script.py args3
...
python script.py argsn
```

The suboptions are the following:

#### 3-3. Problem generation
The necessary arguments are
____________________________________________________________________________________________________________________
| Parameter                     | Description                                                                      |
|-------------------------------|----------------------------------------------------------------------------------|
| num_partitions                | The maximum number of partition to compute                                       |
| max_sub_length                | The maximum length that element in partition are allowed to be                   |
| input_folder                  | The parent folder of every NPP problems                                          |
| export_folder_grid            | The folder to export the compute grid                                            |
| export_folder_problems        | The parent folder to export generated problems when process compute grid         |
| export_folder_transformations | The parent folder to export generated transformations when process compute grid  |
| output_filename               | The name of the compute grid file                                                |
____________________________________________________________________________________________________________________

##### Example
```bash
python src/python/main.py option3 3-1 \
 --input_folder './data/from_github/problems' \
 --export_folder_grid './data/modified' \
 --export_folder_problems './data/modified/problems' \
 --export_folder_transformations './data/modified/transformations' \
 --output_filename 'compute_grid_problem_generation'
```


#### 3-2. Julia commands (1-batch)
This option produce an txt file with julia commands of the form:
```bash
julia src/julia/script.jl 'input_file.json' 'output_file.json'
```
_________________________________________________________________________________________________
| Parameter             | Description                                                           |
|-----------------------|-----------------------------------------------------------------------|
| input_folder          | The parent folder containing json NPP problem                         |
| export_folder_grid    | The folder to export the compute grid                                 |
| export_folder_results | The parent folder to export future results when process compute grid  |
| output_filename       | The name of the compute grid file                                     |
_________________________________________________________________________________________________

##### Example
```bash
python src/python/main.py option3 3-2 \
 --input_folder './data/modified/problems' \
 --export_folder_grid './data/modified' \
 --export_folder_results './data/modified/results' \
 --output_filename 'compute_grid_julia'
```


#### 3-3. Julia commands (n-batch)
This option works with the same arguments the previous one. The exception is that the julia command forms are:
```bash
julia src/julia/script.jl 'csv_grid.csv'
```

_________________________________________________________________________________________________
| Parameter             | Description                                                           |
|-----------------------|-----------------------------------------------------------------------|
| input_folder          | The parent folder containing json NPP problem                         |
| export_folder_grid    | The folder to export the compute grid                                 |
| export_folder_results | The parent folder to export future results when process compute grid  |
| output_filename       | The name of the compute grid file                                     |
| batch_size            | Number of problem inside one batch                                    |
_________________________________________________________________________________________________
The csv grid as two columns: one for the input and one for the output. This is done because the time that Julia needs to initialize is substantial. So by grouping 100 problems and looping over them directly in Julia save initialization time.

##### Example
```bash
python src/python/main.py option3 3-3 \
 --input_folder './data/modified/problems' \
 --export_folder_grid './data/modified' \
 --export_folder_results './data/modified/results' \
 --output_filename 'compute_grid_julia' \
 --batch_size 100
```


#### 3-4. Result process
This option produce a txt file with commands of the form:
```bash
python src/python/main.py option5 5-2 \
 --before_graph_file 'path/to/original_problem.json' \
 --after_graph_result_file 'path/to/transformed_problem_raw_result.json' \
 --transformation_file 'path/to/transformation_file.pkl' \
 --export_folder 'path/to/export_folder' \
 --output_filename 'filename.pkl'
```
The option 5-2 is detailed below.

_______________________________________________________________________________________________
| Parameter                    | Description                                                  |
|------------------------------|--------------------------------------------------------------|
| input_folder_graphs          | The parent folder containing the json npp problem            |
| input_folder_results         | The parent folder containing the json raw results            |
| input_folder_transformations | The parent folder containing the pkl transformations         |
| export_folder_grid           | The folder to export compute grid                            |
| export_folder_results        | The parent folder to export future processed results         |
| output_filename              | The name of the compute grid file                            |
_______________________________________________________________________________________________

##### Example
```bash
python src/python/main.py option3 3-4 \
 --input_folder_graphs 'path/to/graphs_folder' \
 --input_folder_transformations 'path/to/transformations_folder' \
 --input_folder_results 'path/to/raw_results' \
 --export_folder_grid 'path/to/export_folder' \
 --export_folder_results 'path/where/process/are/export_folder' \
 --output_filename 'filename.txt'
```


#### 3-5. Result stacking
This option produce a txt file with commands of the form:
```bash
python src/python/main.py option5 5-3 \
 --input_process_result_file_before 'path/to/original_problem_processed_result.pkl' \
 --input_process_result_file_after 'path/to/transformed_problem_processed_result.pkl' \
 --export_edge_dataframe_file 'path/to/edge_dataframe_file.pkl' \
 --export_meta_dataframe_file 'path/to/meta_dataframe_file.pkl'
```
The option 5-3 is detailed below.


##### Example
```bash
python src/python/main.py option3 3-5 \
 --input_folder_processed_results './other/result_processing/result_process' \
 --export_folder_dataframes './other/result_processing' \
 --export_folder_grid './other/result_processing' \
 --output_filename 'compute_grid_stack_result.txt'
```

### Option 4 - Processing compute grid 
...



### Option 5 - Individual process

#### 5-1. Problem generation
This option generate NPP graph transformation.
____________________________________________________________________________________________________________________
| Parameter                     | Description                                                                      |
|-------------------------------|----------------------------------------------------------------------------------|
| num_partitions                | The maximum number of partition to compute                                       |
| max_sub_length                | The maximum length that element in partition are allowed to be                   |
| min_not_trivial_class         | The minimum number of not trivial equivalence class in partition                 |
| max_not_trivial_class         | The maximum number of not trivial equivalence class in partition                 |
| input_folder                  | The parent folder of every NPP problems                                          |
| export_folder_problems        | The parent folder to export generated problems when process compute grid         |
| export_folder_transformations | The parent folder to export generated transformations when process compute grid  |
____________________________________________________________________________________________________________________


##### Example
```bash
python src/python/main.py option5 5-1 \
 --num_partitions 100 \
 --min_sub_length 4 \
 --max_sub_length 4 \
 --min_not_trivial_class 3 \
 --max_not_trivial_class 3 \
 --H4 True\
 --batch_size 10 \
 --input_file './data/from_github/problems/progressive/i30-06.json' \
 --export_folder_problems './tmp/i30-06/graphs/' \
 --export_folder_transformations './tmp/i30-06/transformations/'
```

#### 5-2. Process result
This option is meant to process the raw result from a problem in the perspective of the original problem.
_______________________________________________________________________________________________
| Parameter                    | Description                                                  |
|------------------------------|--------------------------------------------------------------|
| before_graph_file            | File path of the NPP problem before transformation           |
| after_graph_result_file      | Raw result file path of the transformed NPP problem          |
| transformation_file          | File path of the pkl transformation                          |
| export_folder_results        | The parent folder to export processed results                |
_______________________________________________________________________________________________

##### Example
```bash
python src/python/main.py option5 5-2 \
 --before_graph_file 'path/to/original_graph.json' \
 --after_graph_result_file 'path/to/transformed_graph_raw_result.json' \
 --transformation_file 'path/to/transformation_file.pkl' \
 --export_folder_results 'path/to/export_folder'
```



#### 5-3. Result stack
This option is meat to stack processed result into two dataframe. The first dataframe contain optimal values for the tolled edge of the transformed problem. The second dataframe contain time date and the optimal objective.
______________________________________________________________________________________________________________
| Parameter                         | Description                                                            |
|-----------------------------------|------------------------------------------------------------------------|
| input_process_result_file_before  | Processed result file path of the NPP problem before transformation    |
| input_process_result_file_after   | Processed result file path of the NPP problem after transformation     |
| export_edge_dataframe_file        | File path for the edge dataframe                                       |
| export_meta_dataframe_file        | File path of the meta dataframe                                        |
______________________________________________________________________________________________________________


##### Example
```bash
python src/python/main.py option5 5-3 \
 --input_process_result_file_before 'path/to/original_problem_processed_result.pkl' \
 --input_process_result_file_after 'path/to/transformed_problem_processed_result.pkl' \
 --export_edge_dataframe_file 'path/to/edge_dataframe_file.pkl' \
 --export_meta_dataframe_file 'path/to/meta_dataframe_file.pkl'
```




# Modules

## /gamma
The main class that map graph to graph is in the gamma.py. The other file are tools and useful combinatorials algorithms.
 
## /unit_test
Unit test are needed during the developement.

## /test
Use as a playground before unit testing component.

## /preamble
Handle every external library import.

## /graph
Custom made class for nodes and edges.

## /plot
Every function that plot things.

## /analysis
This module is use to bridge the result from the julia's solver NetPricing (https://github.com/minhcly95/NetPricing.jl) and the different transformation produce by the gamma module. 



## File naming scheme

_______________________________________________________________________________________________________
|Naming                    | Description                                                               |
|--------------------------|---------------------------------------------------------------------------|
|xxxxxx-NPP-yyyyyy         | normal npp problem                                                        |
|xxxxxx-NPP-yyyyyy-R       | revised npp problem                                                       |
|xxxxxx-NPP-yyyyyy-T       | transformation file                                                       |
|xxxxxx-NPP-yyyyyy-(R-)RR  | raw result                                                                |
|xxxxxx-NPP-yyyyyy-(R-)PR  | process result that compare the original problem with the transformed one |
|(R)                       | Revised problem                                                           |
|xxxxx                     | unique id from 0 to 10000                                                 |
|yyyyy                     | problem name                                                              |
_______________________________________________________________________________________________________