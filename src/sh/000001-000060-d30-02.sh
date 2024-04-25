#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-02/000001-000060-d30-02-P.pkl ./data/generated/problems/paper/d30-02/000001-000060-d30-02-R.json 197
sleep 60