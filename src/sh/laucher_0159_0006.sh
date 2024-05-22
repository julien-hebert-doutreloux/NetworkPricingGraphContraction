#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=28:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-01/000001-000024-000095-d35-01-P.pkl ./data/generated/problems/paper/d35-01/000001-000024-000095-d35-01-R.json 132.602839746 ./data/generated/problems/paper/d35-01/d35-01.json ./data/generated/problems/paper/d35-01/000001-000024-000095-d35-01-T.pkl
sleep 601