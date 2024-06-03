#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=04:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000038-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000038-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000038-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000050-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000050-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000050-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000098-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000098-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000098-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000047-000005-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000047-000005-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000047-000005-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000048-000005-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000048-000005-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000048-000005-g50-01-T.pkl
sleep 600