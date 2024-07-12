#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000000-000003-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000000-000003-g45-04-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000000-000003-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000034-000056-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000034-000056-g45-04-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000034-000056-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000019-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000019-000014-g45-04-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000019-000014-g45-04-T.pkl
sleep 600