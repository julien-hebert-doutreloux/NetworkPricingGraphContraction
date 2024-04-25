#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-04/000001-000038-h35-04-P.json ./data/generated/problems/paper/h35-04/000001-000038-h35-04-R.json 884
sleep 300