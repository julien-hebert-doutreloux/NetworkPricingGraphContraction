#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=34:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000016-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000016-000014-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000016-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000017-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000017-000014-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000017-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000036-000067-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000036-000067-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000036-000067-g45-04-T.pkl
sleep 600