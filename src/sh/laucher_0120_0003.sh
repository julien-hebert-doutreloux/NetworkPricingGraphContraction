#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=22:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000006-000099-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000006-000099-g35-07-R.json 99.911886716 ./data/generated/problems/paper/g35-07/g35-07.json ./data/generated/problems/paper/g35-07/000001-000006-000099-g35-07-T.pkl
sleep 601