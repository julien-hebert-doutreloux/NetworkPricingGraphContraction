#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000030-000011-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000030-000011-g45-08-R.json 79 5 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000030-000011-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000024-000012-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000024-000012-g45-08-R.json 79 5 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000024-000012-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000005-000089-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000005-000089-g45-08-R.json 79 5 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000005-000089-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000010-000097-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000010-000097-g45-08-R.json 79 5 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000010-000097-g45-08-T.pkl
sleep 600