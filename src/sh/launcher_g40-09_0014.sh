#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:47:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000002-000017-000049-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000002-000017-000049-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000002-000017-000049-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000070-000050-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000070-000050-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000070-000050-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000003-000053-000019-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000003-000053-000019-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000003-000053-000019-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000003-000057-000023-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000003-000057-000023-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000003-000057-000023-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000018-000050-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000018-000050-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000018-000050-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000002-000071-000051-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000002-000071-000051-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000002-000071-000051-g40-09-T.pkl
sleep 600