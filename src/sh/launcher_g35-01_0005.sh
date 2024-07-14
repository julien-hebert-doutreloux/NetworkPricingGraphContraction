#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=37:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000030-000075-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000030-000075-g35-01-R.json 75 2 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000030-000075-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000025-000071-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000025-000071-g35-01-R.json 75 2 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000025-000071-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000002-000001-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000002-000001-g35-01-R.json 75 2 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000002-000001-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000020-000099-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000020-000099-g35-01-R.json 75 2 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000020-000099-g35-01-T.pkl
sleep 600