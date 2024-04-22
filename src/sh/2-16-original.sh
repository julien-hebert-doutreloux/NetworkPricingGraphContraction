#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-02-P.json' './data/generated/problems/paper/original/000000-000000-d40-02-R.json' 1550
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-05-P.json' './data/generated/problems/paper/original/000000-000000-d40-05-R.json' 335
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-06-P.json' './data/generated/problems/paper/original/000000-000000-d40-06-R.json' 765
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-08-P.json' './data/generated/problems/paper/original/000000-000000-d40-08-R.json' 1345
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-09-P.json' './data/generated/problems/paper/original/000000-000000-d40-09-R.json' 630
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-10-P.json' './data/generated/problems/paper/original/000000-000000-d40-10-R.json' 1465
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-02-P.json' './data/generated/problems/paper/original/000000-000000-d45-02-R.json' 788
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-06-P.json' './data/generated/problems/paper/original/000000-000000-d45-06-R.json' 999
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-01-P.json' './data/generated/problems/paper/original/000000-000000-g35-01-R.json' 315
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-02-P.json' './data/generated/problems/paper/original/000000-000000-g35-02-R.json' 272
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-03-P.json' './data/generated/problems/paper/original/000000-000000-g35-03-R.json' 358
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-04-P.json' './data/generated/problems/paper/original/000000-000000-g35-04-R.json' 316
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-05-P.json' './data/generated/problems/paper/original/000000-000000-g35-05-R.json' 267
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-06-P.json' './data/generated/problems/paper/original/000000-000000-g35-06-R.json' 263
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-07-P.json' './data/generated/problems/paper/original/000000-000000-g35-07-R.json' 346
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-08-P.json' './data/generated/problems/paper/original/000000-000000-g35-08-R.json' 863
sleep 60