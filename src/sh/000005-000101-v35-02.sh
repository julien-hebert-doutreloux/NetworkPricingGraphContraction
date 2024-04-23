#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=07:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v35-02/000005-000101-v35-02-P.pkl ./data/generated/problems/paper/v35-02/000005-000101-v35-02-R.json 258
sleep 60