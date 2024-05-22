#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=08:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000004-000087-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000004-000087-g30-07-R.json 42.450662467 ./data/generated/problems/paper/g30-07/g30-07.json ./data/generated/problems/paper/g30-07/000001-000004-000087-g30-07-T.pkl
sleep 601