#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:05:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000078-000021-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000078-000021-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000078-000021-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000072-000023-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000072-000023-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000072-000023-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000074-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000074-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000074-000050-g40-06-T.pkl
sleep 600