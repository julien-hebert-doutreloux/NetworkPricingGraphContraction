#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=23:04:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000103-000050-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000103-000050-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000103-000050-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000078-000050-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000078-000050-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000078-000050-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000002-000095-000028-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000002-000095-000028-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000002-000095-000028-g45-03-T.pkl
sleep 600