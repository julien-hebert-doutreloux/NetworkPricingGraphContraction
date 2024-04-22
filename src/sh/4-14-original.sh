#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-07-P.json' './data/generated/problems/paper/original/000000-000000-g50-07-R.json' 399
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-08-P.json' './data/generated/problems/paper/original/000000-000000-g50-08-R.json' 366
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-10-P.json' './data/generated/problems/paper/original/000000-000000-g50-10-R.json' 398
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-01-P.json' './data/generated/problems/paper/original/000000-000000-h30-01-R.json' 516
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-03-P.json' './data/generated/problems/paper/original/000000-000000-h30-03-R.json' 440
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-07-P.json' './data/generated/problems/paper/original/000000-000000-h30-07-R.json' 846
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-09-P.json' './data/generated/problems/paper/original/000000-000000-h30-09-R.json' 798
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-04-P.json' './data/generated/problems/paper/original/000000-000000-h35-04-R.json' 927
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-07-P.json' './data/generated/problems/paper/original/000000-000000-h35-07-R.json' 1453
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-10-P.json' './data/generated/problems/paper/original/000000-000000-h35-10-R.json' 300
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h40-09-P.json' './data/generated/problems/paper/original/000000-000000-h40-09-R.json' 1741
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-01-P.json' './data/generated/problems/paper/original/000000-000000-v30-01-R.json' 625
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-03-P.json' './data/generated/problems/paper/original/000000-000000-v30-03-R.json' 1250
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-05-P.json' './data/generated/problems/paper/original/000000-000000-v30-05-R.json' 1018
sleep 60