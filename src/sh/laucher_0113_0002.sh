#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=17:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000001-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000001-000003-g45-01-R.json 75.007450197 ./data/generated/problems/paper/g45-01/g45-01.json ./data/generated/problems/paper/g45-01/000001-000001-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000011-000098-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000011-000098-g45-01-R.json 75.007450197 ./data/generated/problems/paper/g45-01/g45-01.json ./data/generated/problems/paper/g45-01/000001-000011-000098-g45-01-T.pkl
sleep 601