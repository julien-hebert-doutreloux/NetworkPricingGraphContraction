#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=43:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-03/000001-000024-000097-d35-03-P.pkl ./data/generated/problems/paper/d35-03/000001-000024-000097-d35-03-R.json 200 ./data/generated/problems/paper/d35-03/d35-03.json ./data/generated/problems/paper/d35-03/000001-000024-000097-d35-03-T.pkl
sleep 601