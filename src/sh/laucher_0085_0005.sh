#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=43:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-06/000001-000018-000098-h35-06-P.pkl ./data/generated/problems/paper/h35-06/000001-000018-000098-h35-06-R.json 200 ./data/generated/problems/paper/h35-06/h35-06.json ./data/generated/problems/paper/h35-06/000001-000018-000098-h35-06-T.pkl
sleep 601