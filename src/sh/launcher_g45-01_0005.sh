#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000053-000051-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000053-000051-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000053-000051-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000003-000071-000020-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000003-000071-000020-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000003-000071-000020-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000084-000050-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000084-000050-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000084-000050-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000069-000050-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000069-000050-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000069-000050-g45-01-T.pkl
sleep 600