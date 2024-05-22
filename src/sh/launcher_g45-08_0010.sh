#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=13:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000009-000011-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000009-000011-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000009-000011-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000014-000011-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000014-000011-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000014-000011-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000042-000049-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000042-000049-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000042-000049-g45-08-T.pkl
sleep 600