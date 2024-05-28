#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000013-000022-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000013-000022-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000013-000022-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000040-000049-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000040-000049-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000040-000049-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000021-000034-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000021-000034-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000021-000034-g40-06-T.pkl
sleep 600