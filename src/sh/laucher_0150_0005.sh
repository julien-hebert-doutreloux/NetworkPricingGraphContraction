#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-05/000001-000005-000093-d35-05-P.pkl ./data/generated/problems/paper/d35-05/000001-000005-000093-d35-05-R.json 200 ./data/generated/problems/paper/d35-05/d35-05.json ./data/generated/problems/paper/d35-05/000001-000005-000093-d35-05-T.pkl
sleep 601