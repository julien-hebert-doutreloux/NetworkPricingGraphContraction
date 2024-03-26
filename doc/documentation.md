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