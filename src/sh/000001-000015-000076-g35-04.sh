#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=03:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000015-000076-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000015-000076-g35-04-R.json 167
sleep 600