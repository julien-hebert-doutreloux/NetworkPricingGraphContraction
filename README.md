## Instructions


## Gurobi install
To install and activate Gurobi on linux:
https://www.youtube.com/watch?v=OYuOKXPJ5PI

```bash
julia
import Pkg; Pkg.add("Gurobi")
```

### Julia prerequisites
```bash
julia
import Pkg; Pkg.add("JSON")
import Pkg; Pkg.add("CSV")
import Pkg; Pkg.add("FileIO")
import Pkg; Pkg.add("Unmarshal")
import Pkg; Pkg.add("Pickle")
import Pkg; Pkg.add("DataFrames")
import Pkg; Pkg.add("BenchmarkTools")
```

### NetPricing (from github)
```bash
julia
]
add https://github.com/minhcly95/NetPricing.jl  
add https://github.com/julien-hebert-doutreloux/NetPricing.jl
```
### JuMP
```bash  
import Pkg; Pkg.add("JuMP")  
```


### Python
#### Install virtualenv
If you don't have `virtualenv` installed, you can install it using the following command:

```bash
pip install virtualenv
```

#### Create a virtual environment
Navigate to your project directory and create a new virtual environment named venv:

```bash
cd /path/to/your/project
virtualenv venv
```

#### Activate the virtual environment
Activate the virtual environment using the appropriate command for your operating system:

- On Windows:
```bash
venv\Scripts\activate
```

- On Unix or MacOS:
```bash
source venv/bin/activate
```


When the virtual environment is activated, your shell prompt will change to show the name of the activated environment.

### Install dependencies
Install the project dependencies using pip:

```bash
pip install -r requirements.txt
```

This assumes that your project dependencies are listed in a file named requirements.txt. If your project doesn't have this file, you'll need to create it or install dependencies manually.
Run the project

Run your project in the isolated environment:

```bash
python your_script.py
```