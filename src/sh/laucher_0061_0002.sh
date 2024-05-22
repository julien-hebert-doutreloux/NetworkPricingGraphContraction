#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=45:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v50-03/000001-000002-000002-v50-03-P.pkl ./data/generated/problems/paper/v50-03/000001-000002-000002-v50-03-R.json 200 ./data/generated/problems/paper/v50-03/v50-03.json ./data/generated/problems/paper/v50-03/000001-000002-000002-v50-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v50-03/000001-000005-000099-v50-03-P.pkl ./data/generated/problems/paper/v50-03/000001-000005-000099-v50-03-R.json 200 ./data/generated/problems/paper/v50-03/v50-03.json ./data/generated/problems/paper/v50-03/000001-000005-000099-v50-03-T.pkl
sleep 601