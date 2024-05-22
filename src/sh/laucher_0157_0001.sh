#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=42:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000010-000096-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000010-000096-g45-04-R.json 200 ./data/generated/problems/paper/g45-04/g45-04.json ./data/generated/problems/paper/g45-04/000001-000010-000096-g45-04-T.pkl
sleep 601