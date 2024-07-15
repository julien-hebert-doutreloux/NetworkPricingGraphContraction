#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000013-000019-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000013-000019-g45-09-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000013-000019-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000027-000055-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000027-000055-g45-09-R.json 200 4 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000027-000055-g45-09-T.pkl
sleep 600