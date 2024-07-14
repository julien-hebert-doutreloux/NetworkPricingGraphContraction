#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=32:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000012-000072-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000012-000072-g45-08-R.json 79 3 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000012-000072-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000007-000067-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000007-000067-g45-08-R.json 79 3 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000007-000067-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000006-000067-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000006-000067-g45-08-R.json 79 3 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000006-000067-g45-08-T.pkl
sleep 600