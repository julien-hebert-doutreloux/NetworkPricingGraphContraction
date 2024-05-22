#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=44:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-01/000001-000001-000002-v45-01-P.pkl ./data/generated/problems/paper/v45-01/000001-000001-000002-v45-01-R.json 200 ./data/generated/problems/paper/v45-01/v45-01.json ./data/generated/problems/paper/v45-01/000001-000001-000002-v45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v45-01/000001-000004-000098-v45-01-P.pkl ./data/generated/problems/paper/v45-01/000001-000004-000098-v45-01-R.json 200 ./data/generated/problems/paper/v45-01/v45-01.json ./data/generated/problems/paper/v45-01/000001-000004-000098-v45-01-T.pkl
sleep 601