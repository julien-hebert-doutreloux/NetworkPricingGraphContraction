#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-07/000001-000021-000099-d30-07-P.pkl ./data/generated/problems/paper/d30-07/000001-000021-000099-d30-07-R.json 9.750100927 ./data/generated/problems/paper/d30-07/d30-07.json ./data/generated/problems/paper/d30-07/000001-000021-000099-d30-07-T.pkl
sleep 601