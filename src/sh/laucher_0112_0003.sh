#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=45:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-04/000001-000001-000002-v45-04-P.pkl ./data/generated/problems/paper/v45-04/000001-000001-000002-v45-04-R.json 200 ./data/generated/problems/paper/v45-04/v45-04.json ./data/generated/problems/paper/v45-04/000001-000001-000002-v45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v45-04/000001-000011-000099-v45-04-P.pkl ./data/generated/problems/paper/v45-04/000001-000011-000099-v45-04-R.json 200 ./data/generated/problems/paper/v45-04/v45-04.json ./data/generated/problems/paper/v45-04/000001-000011-000099-v45-04-T.pkl
sleep 601