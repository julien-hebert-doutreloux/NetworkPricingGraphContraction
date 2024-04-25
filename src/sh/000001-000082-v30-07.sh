#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=22:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-07/000001-000082-v30-07-P.pkl ./data/generated/problems/paper/v30-07/000001-000082-v30-07-R.json 974
sleep 60