#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=26:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-08/000001-000011-000060-d35-08-P.pkl ./data/generated/problems/paper/d35-08/000001-000011-000060-d35-08-R.json 198.12423857 ./data/generated/problems/paper/d35-08/d35-08.json ./data/generated/problems/paper/d35-08/000001-000011-000060-d35-08-T.pkl
sleep 601