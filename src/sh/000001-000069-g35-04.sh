#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000069-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000069-g35-04-R.json 167
sleep 60