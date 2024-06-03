#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=06:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000102-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000102-000014-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000102-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000070-000015-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000070-000015-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000070-000015-g30-01-T.pkl
sleep 600