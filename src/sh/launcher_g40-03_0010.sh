#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000014-000013-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000014-000013-g40-03-R.json 131 5 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000014-000013-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000037-000083-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000037-000083-g40-03-R.json 131 5 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000037-000083-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000003-000003-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000003-000003-g40-03-R.json 131 5 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000003-000003-g40-03-T.pkl
sleep 600