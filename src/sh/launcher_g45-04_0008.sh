#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=37:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000023-000015-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000023-000015-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000023-000015-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000012-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000012-000014-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000012-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000033-000075-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000033-000075-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000033-000075-g45-04-T.pkl
sleep 600