#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000013-000013-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000013-000013-g45-07-R.json 105 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000013-000013-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000038-000078-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000038-000078-g45-07-R.json 105 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000038-000078-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000036-000067-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000036-000067-g45-07-R.json 105 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000036-000067-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000012-000014-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000012-000014-g45-07-R.json 105 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000012-000014-g45-07-T.pkl
sleep 600