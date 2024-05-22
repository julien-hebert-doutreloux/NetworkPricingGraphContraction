#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=18:11:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000020-000074-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000020-000074-g45-07-R.json 109.646684335 ./data/generated/problems/paper/g45-07/g45-07.json ./data/generated/problems/paper/g45-07/000001-000020-000074-g45-07-T.pkl
sleep 601