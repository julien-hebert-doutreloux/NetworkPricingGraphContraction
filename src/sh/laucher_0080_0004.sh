#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=03:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000002-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000002-000003-g40-08-R.json 200 ./data/generated/problems/paper/g40-08/g40-08.json ./data/generated/problems/paper/g40-08/000001-000002-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000000-000005-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000000-000005-g40-08-R.json 200 ./data/generated/problems/paper/g40-08/g40-08.json ./data/generated/problems/paper/g40-08/000001-000000-000005-g40-08-T.pkl
sleep 601