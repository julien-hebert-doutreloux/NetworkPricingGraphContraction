#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=02:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000005-000079-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000005-000079-g30-10-R.json 111
sleep 60