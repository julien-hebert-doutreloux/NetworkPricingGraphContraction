#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=07:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-09/000001-000001-000003-v30-09-P.pkl ./data/generated/problems/paper/v30-09/000001-000001-000003-v30-09-R.json 200 ./data/generated/problems/paper/v30-09/v30-09.json ./data/generated/problems/paper/v30-09/000001-000001-000003-v30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v30-09/000001-000006-000014-v30-09-P.pkl ./data/generated/problems/paper/v30-09/000001-000006-000014-v30-09-R.json 200 ./data/generated/problems/paper/v30-09/v30-09.json ./data/generated/problems/paper/v30-09/000001-000006-000014-v30-09-T.pkl
sleep 601