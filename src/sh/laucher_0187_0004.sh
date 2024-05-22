#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=45:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-06/000001-000003-000002-v50-06-P.pkl ./data/generated/problems/paper/v50-06/000001-000003-000002-v50-06-R.json 200 ./data/generated/problems/paper/v50-06/v50-06.json ./data/generated/problems/paper/v50-06/000001-000003-000002-v50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v50-06/000001-000007-000099-v50-06-P.pkl ./data/generated/problems/paper/v50-06/000001-000007-000099-v50-06-R.json 200 ./data/generated/problems/paper/v50-06/v50-06.json ./data/generated/problems/paper/v50-06/000001-000007-000099-v50-06-T.pkl
sleep 601