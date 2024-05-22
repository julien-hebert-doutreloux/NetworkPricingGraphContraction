#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=12:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000001-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000001-000002-g35-10-R.json 53.023777821 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000001-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000005-000099-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000005-000099-g35-10-R.json 53.023777821 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000005-000099-g35-10-T.pkl
sleep 601