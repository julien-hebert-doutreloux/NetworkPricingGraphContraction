#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-01-P.json' './data/generated/problems/paper/original/000000-000000-h50-01-R.json' 5000
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-02-P.json' './data/generated/problems/paper/original/000000-000000-h50-02-R.json' 5000
sleep 60