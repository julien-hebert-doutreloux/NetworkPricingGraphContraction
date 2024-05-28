#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:29:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000034-000022-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000034-000022-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000034-000022-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000004-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000004-000007-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000004-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000016-000032-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000016-000032-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000016-000032-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000006-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000006-000007-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000006-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000046-000048-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000046-000048-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000046-000048-g40-06-T.pkl
sleep 600