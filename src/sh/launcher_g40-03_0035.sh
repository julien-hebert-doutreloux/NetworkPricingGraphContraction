#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000002-000056-000016-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000002-000056-000016-g40-03-R.json 151 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000002-000056-000016-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000002-000053-000021-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000002-000053-000021-g40-03-R.json 151 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000002-000053-000021-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000002-000046-000042-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000002-000046-000042-g40-03-R.json 151 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000002-000046-000042-g40-03-T.pkl
sleep 600