#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=28:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-08/000001-000007-000089-d30-08-P.pkl ./data/generated/problems/paper/d30-08/000001-000007-000089-d30-08-R.json 143.543632858 ./data/generated/problems/paper/d30-08/d30-08.json ./data/generated/problems/paper/d30-08/000001-000007-000089-d30-08-T.pkl
sleep 601