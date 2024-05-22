#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=28:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d35-07/000001-000016-000099-d35-07-P.pkl ./data/generated/problems/paper/d35-07/000001-000016-000099-d35-07-R.json 128.282530063 ./data/generated/problems/paper/d35-07/d35-07.json ./data/generated/problems/paper/d35-07/000001-000016-000099-d35-07-T.pkl
sleep 601