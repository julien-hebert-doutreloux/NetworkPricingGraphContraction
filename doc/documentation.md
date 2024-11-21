## How to use main.py

### Option 1 - unit_test
Run this command to verify every module is working as intended:
```
    $ python src/main.py option1
```
It is possible that the Rules module isn't working if it was changed. If there are changes in the rules.make_rules() function, please make sure to reflect those changes into the ```unit_test.unit_test_rules.py```


### Option 2 - test_approx_max_clique.py
To get information about this script:
```
    $ python src/main.py option2 --help
```
It will return:
```
options:
  -h, --help            show this help message and exit
  -f INPUT_FILE, --input_file INPUT_FILE
                        NPP JSON problem
  -i ITERATION, --iteration ITERATION
                        Iteration number
  -e EXPORT_PATH, --export_path EXPORT_PATH
                        Result export path
```


### Option 3 - Maximum clique and NPP step
Be sure to have the data from https://github.com/minhcly95/NetPricing.jl/tree/master/problems. We will use them to generate all transformations as well as every modified original (the same but with integer value). If the data are placed in ```/data/from_github/problems/``` then the following command should be run to create every folder needed later
```
sh ./src/sh/0000_mkdir_prepare.sh
```


#### 3-0. Maximum clique experience (generate sh files)
To prepare the maximum clique experience run the following command:
```
python ./src/python/main.py option3 3-0
```

All the parameters for the experiment are in the ```./src/python/config.py``` at the function ```prebuilt_a00_prepare_max_clique_script_sh```. 
__________________________________________________________________________________
| Parameter                    | Description                                      |
|------------------------------|--------------------------------------------------|
| `directory_problem`          | Folder where NPP problem can be found           |
| `export_path`                | Export folder for maximum clique result         |
| `directory_sh`               | Output folder for shell script generated files  |
| `cpu`                        | Number of CPU cores allocated                    |
| `ram`                        | Amount of RAM (in GB) allocated                  |
| `h`                          | Number of hours              |
| `m`                          | Number of minutes               |
| `s`                          | Number of seconds               |
| `n_try`                      | Number of independent executions for the algorithm to find the maximum clique |
| `batch_size`                 | Number of commands in the same shell script file |
| `server_time_buffer`         | Time buffer for server (in seconds)             |
| `partition`                  | Partition setting for the server                 |
| `preamble_args`              | Pre-execution commands in the shell script      |
___________________________________________________________________________________


#### 3-1. Prepare sh files to generate transformed NPP problems
To prepare the generation of transformations run the following command :
```
python ./src/python/main.py option3 3-1
```
Then run :
```
find $directory_sh -type f -name "generation*" -exec sbatch {} \;
```

All the parameters are in the ```./src/python/config.py``` at the function ```prebuilt_a01_problem_generation```.
__________________________________________________________________________________
| Parameter                   | Description                                      |
|-----------------------------|--------------------------------------------------|
| `n`                          | Maximum number of transformations to generate            |
| `min_sl`                     | Minimum length for all non-trivial arcs equivalence class |
| `max_sl`                     | Maximum length for all non-trivial arcs equivalence class |
| `m`                          | Number of non-trivial arc equivalence classes    |
| `H1`                         | Continuity-free edge equivalence class hypothesis (0,1) |
| `H2`                         | Equivalence class assumption for elements of equal value (0,1) |
| `H3`                         | Tolled element equivalence class hypothesis (0,1) |
| `H4`                         | Local element only (0,1)                         |
| `max_attemp`                 | Maximum number of attempts                       |
| `batch_size`                 | Number of commands in the same shell script file |
| `directory_input`            | Input folder where GitHub original problems can be found |
| `directory_output`           | Output folder for transformed problems          |
| `directory_original`         | Input folder where original problems can be found |
| `directory_sh`               | Output folder for shell script generated files  |
| `server_time_buffer`         | Time buffer for server (in seconds)             |
| `partition`                  | Partition setting for the server                 |
| `preamble_args`              | Pre-execution commands in the shell script      |
____________________________________________________________________________________

#### 3-2. Prepare sh file to solve original NPP problems
To prepare the original problem to be solve run the following command :
```
python ./src/python/main.py option3 3-2
```
Then run :
```
find $directory_sh -type f -name "original_batch_*" -exec sbatch {} \;
```
All the parameters are in the ```./src/python/config.py``` at the function ```prebuilt_a02_prepare_sh_original```.

___________________________________________________________________________________
| Parameter                   | Description                                      |
|-----------------------------|--------------------------------------------------|
| `directory_npp`              | Input folder for the original NPP problems      |
| `directory_sh`               | Output folder for shell script generated files  |
| `time_limit`                 | Time limit for execution (in seconds)           |
| `lenght_batch`               | Batch length (must divide the number of problems in `directory_npp`) |
| `server_time_buffer`         | Time buffer for server (in seconds)             |
| `preamble_args`              | Pre-execution commands in the shell script (e.g., module loads) |
| `partition`                  | Partition setting for the server                |
______________________________________________________________________________________


#### 3-3. Create original NPP timetable
To create the timetable for the original problems run the following command :
```
python ./src/python/main.py option3 3-3
```

All the parameters are in the ```./src/python/config.py``` at the function ```prebuilt_a03_time_config```.
___________________________________________________________________________________
| Parameter                   | Description                                      |
|-----------------------------|--------------------------------------------------|
| `directory_npp`              | Input folder for the original NPP problems      |
| `time_filename`              | Filename for storing time configuration (e.g., `time_config.pkl`) |
________________________________________________________________________________________

#### 3-4. Prepare sh files to solve transformed NPP problems
To generate script that solved transformed NPP problems run the following command :  
```
python ./src/python/main.py option3 3-4
```
Then run :
```
find $directory_sh -type f -name "launcher_*" -exec sbatch {} \;
```
To do all strategies `prepare_sh_file.julia_compute_option` need to be set in the config file. After that he last two commands can be rerun (but you should wait until the first process is finished).
When all strategies have been solved, run the following command to correct the raw solution file. **This is because the data are stacked on the same file for each strategy.**
```
find $directory_npp -type f -name "*R.json" -not -path "*/original/*" -exec sed -i "s|\}\]\[{|\},\{|g" {} \;
```
All the parameters are in the ```./src/python/config.py``` at the function ```prebuilt_a04_prepare_sh_julia```.
 ____________________________________________________________________________________________
| Parameter                           | Description                                        |
|-------------------------------------|----------------------------------------------------|
| `file_time_config`                  | Input timetable used to impose time constraints (e.g., `time_config_g_200.pkl`) |
| `directory_npp`                     | Input folder where transformed problems can be found |
| `directory_original`                | Input folder where original problems can be found  |
| `directory_sh`                      | Output folder for generated shell script files     |
| `grouped`                           | Flag for batching commands (should not be changed unless for a good reason) |
| `prepare_sh_file.n_exp`             | Number of experiences (strategy number, see `./src/julia/script.jl`) |
| `prepare_sh_file.n_eval`            | Number of evaluations (should not be changed unless for a good reason) |
| `prepare_sh_file.eval_time`         | Evaluation time in seconds                         |
| `prepare_sh_file.min_time`          | Minimum time (in seconds)                          |
| `prepare_sh_file.max_time`          | Maximum time (in seconds)                          |
| `prepare_sh_file.server_time_buffer`| Time buffer for server (in seconds)               |
| `prepare_sh_file.julia_compute_option` | Option number (strategy number, see `./src/julia/script.jl`) |
| `prepare_sh_file.preamble_args`     | Pre-execution commands in the shell script (e.g., module loads) |
___________________________________________________________________________________________________________

#### 3-5. Prepare sh files to post-process data from transformed NPP problems
To prepare script that process the date from the solved transformed NPP run the following command :
```
python ./src/python/main.py option3 3-5
```
Then run : 
```
find $directory_sh -type f -name "post_process*" -exec sbatch {} \;
```
All the parameters are in the ```./src/python/config.py``` at the function ```prebuilt_a05_post_processing_result```.
___________________________________________________________________________________
| Parameter                   | Description                                      |
|-----------------------------|--------------------------------------------------|
| `directory_npp`              | Input folder where transformed problems can be found |
| `directory_original`         | Input folder where original problems can be found |
| `directory_output`           | Output folder for data                          |
| `directory_sh`               | Output folder for shell script generated files  |
| `output_name_prefix`         | Prefix for file naming                          |
| `batch_size`                 | Number of processing in the batch               |
| `server_time_buffer`         | Time buffer for server (in seconds)             |
| `partition`                  | Partition setting for the server                |
| `preamble_args`              | Pre-execution commands in the shell script (e.g., module loads) |
___________________________________________________________________________________

## Create plots
To create a plot for the NPP experiment use the Jupyter Lab ```/notebook/result_compile.ipynb```. For the maximum clique, use ```/notebook/max_clique.ipynb```.
# Structure

```
./src/python
├── config.py			# Parameter configuration file for all python files
├── main.py			# Main call script
├── gamma
│   ├── common.py		# Useful functions to bridge the gap between NPP problems and graph transformation
│   ├── gamma.py		# Implementing graph transformation by identifying arcs
│   ├── partition.py		# Algorithm for constructing arc partitions required for graph transformation sampling
│   └── rules.py		# To determine the NPP compatibility graph and find the maximum cliques
├── graph
│   └── graph.py		# Implementing the Node and Edge classes
├── menu
│   └── menu.py			# Code to configure the main.py menu
├── preamble
│   └── preamble.py		# List of libraries to import
├── prebuilt
│   ├── a00_prepare_max_clique_script_sh.py	# Generates server sh files for maximum click experiments
│   ├── a01_prepare_sh_original.py		# Generates sh files for the server to solve original NPP problems
│   ├── a02_time_config.py			# Generates a table of solving times for each original problem to estimate and 
│   │						# limit the solving time of transformed problems
│   │
│   ├── a03_problem_generation.py		# Generates sh files for the server to randomly generate graph transformations 
│   │						# for all original problems and then transform problems with these 
│   │						# transformations
│   ├── a04_prepare_sh_julia.py			# Generates sh files for the server to resolve transformed problems
│   └── a05_post_processing_result.py		# Generates sh files for the server to gather all the results of each 
│						# transformed problem related to an original problem into one file
├── testing
│   ├── experience_approx_max_clique_sh.py	# Script for testing maximum clique algorithms (V1, V2, networkx)
│   ├── problem_maker.py			# Script to generate transformed NPP problems
│   └── result_processing.py			# Script for processing Julia's NPP output results
└── unit_test
    ├── examples.py				# Hard coded graph for unit tests
    ├── tools.py				# Utils function for unit tests
    ├── unit_test_common.py			# Unit tests on the gamma/common.py file
    ├── unit_test_gamma.py			# Unit tests on the gamma/gamma.py file
    ├── unit_test_graph.py			# Unit tests on the graph/graph.py file
    ├── unit_test_partition.py			# Unit tests on the gamma/partition.py file
    ├── unit_test.py				# Script to run tests
    └── unit_test_rules.py			# Unit tests on the gamma/rules.py file

   ```
