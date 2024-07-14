#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=39:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000028-000072-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000028-000072-g40-10-R.json 139 3 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000028-000072-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000017-000078-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000017-000078-g40-10-R.json 139 3 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000017-000078-g40-10-T.pkl
sleep 600