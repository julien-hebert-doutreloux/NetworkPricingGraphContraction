#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=01:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000005-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000005-000014-g30-02-R.json 307
sleep 600