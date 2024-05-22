#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=08:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-04/000001-000006-000019-h35-04-P.pkl ./data/generated/problems/paper/h35-04/000001-000006-000019-h35-04-R.json 200 ./data/generated/problems/paper/h35-04/h35-04.json ./data/generated/problems/paper/h35-04/000001-000006-000019-h35-04-T.pkl
sleep 601