#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=08:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000000-000076-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000000-000076-g35-09-R.json 28.277220727 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000000-000076-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000011-000058-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000011-000058-g35-09-R.json 28.277220727 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000011-000058-g35-09-T.pkl
sleep 601