#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=33:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-02/000001-000010-000099-v35-02-P.pkl ./data/generated/problems/paper/v35-02/000001-000010-000099-v35-02-R.json 151.008677076 ./data/generated/problems/paper/v35-02/v35-02.json ./data/generated/problems/paper/v35-02/000001-000010-000099-v35-02-T.pkl
sleep 601