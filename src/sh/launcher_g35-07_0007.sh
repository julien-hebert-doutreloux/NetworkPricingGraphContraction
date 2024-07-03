#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=49:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000028-000081-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000028-000081-g35-07-R.json 98 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000028-000081-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000030-000081-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000030-000081-g35-07-R.json 98 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000030-000081-g35-07-T.pkl
sleep 600