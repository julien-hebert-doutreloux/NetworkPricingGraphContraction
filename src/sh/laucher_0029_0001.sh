#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=41:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-10/000001-000018-000093-v50-10-P.pkl ./data/generated/problems/paper/v50-10/000001-000018-000093-v50-10-R.json 200 ./data/generated/problems/paper/v50-10/v50-10.json ./data/generated/problems/paper/v50-10/000001-000018-000093-v50-10-T.pkl
sleep 601