#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=52:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000013-000066-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000013-000066-g30-01-R.json 183 3 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000013-000066-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000009-000093-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000009-000093-g30-01-R.json 183 3 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000009-000093-g30-01-T.pkl
sleep 600