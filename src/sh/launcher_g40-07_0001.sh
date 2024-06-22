#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000019-000081-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000019-000081-g40-07-R.json 112 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000019-000081-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000016-000080-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000016-000080-g40-07-R.json 112 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000016-000080-g40-07-T.pkl
sleep 600