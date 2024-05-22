#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000004-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000004-000007-g30-06-R.json 67.376855187 ./data/generated/problems/paper/g30-06/g30-06.json ./data/generated/problems/paper/g30-06/000001-000004-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000003-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000003-000007-g30-06-R.json 67.376855187 ./data/generated/problems/paper/g30-06/g30-06.json ./data/generated/problems/paper/g30-06/000001-000003-000007-g30-06-T.pkl
sleep 601