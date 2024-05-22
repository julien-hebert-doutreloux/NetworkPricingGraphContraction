#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=06:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v45-02/000001-000006-000014-v45-02-P.pkl ./data/generated/problems/paper/v45-02/000001-000006-000014-v45-02-R.json 200 ./data/generated/problems/paper/v45-02/v45-02.json ./data/generated/problems/paper/v45-02/000001-000006-000014-v45-02-T.pkl
sleep 601