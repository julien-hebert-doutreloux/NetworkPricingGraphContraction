#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-06-P.json' './data/generated/problems/paper/original/000000-000000-v30-06-R.json' 930
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-07-P.json' './data/generated/problems/paper/original/000000-000000-v30-07-R.json' 1020
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-08-P.json' './data/generated/problems/paper/original/000000-000000-v30-08-R.json' 828
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v35-01-P.json' './data/generated/problems/paper/original/000000-000000-v35-01-R.json' 712
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v35-02-P.json' './data/generated/problems/paper/original/000000-000000-v35-02-R.json' 388
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v35-09-P.json' './data/generated/problems/paper/original/000000-000000-v35-09-R.json' 1388
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v40-01-P.json' './data/generated/problems/paper/original/000000-000000-v40-01-R.json' 1101
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v40-02-P.json' './data/generated/problems/paper/original/000000-000000-v40-02-R.json' 519
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v40-04-P.json' './data/generated/problems/paper/original/000000-000000-v40-04-R.json' 1527
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v45-01-P.json' './data/generated/problems/paper/original/000000-000000-v45-01-R.json' 990
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v45-04-P.json' './data/generated/problems/paper/original/000000-000000-v45-04-R.json' 1414
sleep 60