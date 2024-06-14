#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=21:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000066-000001-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000066-000001-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000066-000001-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000052-000050-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000052-000050-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000052-000050-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000003-000036-000011-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000003-000036-000011-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000003-000036-000011-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000006-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000006-000002-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000006-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000067-000001-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000067-000001-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000067-000001-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000043-000050-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000043-000050-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000043-000050-g45-09-T.pkl
sleep 600