#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000006-000005-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000006-000005-g40-08-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000006-000005-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000003-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000003-000003-g40-08-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000003-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000016-000013-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000016-000013-g40-08-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000016-000013-g40-08-T.pkl
sleep 600