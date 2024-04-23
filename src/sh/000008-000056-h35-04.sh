#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=13:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-04/000008-000056-h35-04-P.pkl ./data/generated/problems/paper/h35-04/000008-000056-h35-04-R.json 884
sleep 60