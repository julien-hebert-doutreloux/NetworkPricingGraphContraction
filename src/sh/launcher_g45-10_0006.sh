#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=37:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000002-000014-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000002-000014-g45-10-R.json 143 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000002-000014-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000018-000074-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000018-000074-g45-10-R.json 143 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000018-000074-g45-10-T.pkl
sleep 600