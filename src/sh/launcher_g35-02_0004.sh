#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=04:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000026-000071-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000026-000071-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000026-000071-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000006-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000006-000002-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000006-000002-g35-02-T.pkl
sleep 600