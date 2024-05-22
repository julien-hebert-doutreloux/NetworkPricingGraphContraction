#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=13:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000010-000042-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000010-000042-g40-06-R.json 41.332847693 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000010-000042-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000016-000099-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000016-000099-g40-06-R.json 41.332847693 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000016-000099-g40-06-T.pkl
sleep 601