#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000024-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000024-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000024-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000038-000045-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000038-000045-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000038-000045-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000046-000049-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000046-000049-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000046-000049-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000044-000048-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000044-000048-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000044-000048-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000039-000046-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000039-000046-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000039-000046-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000050-000049-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000050-000049-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000050-000049-g40-05-T.pkl
sleep 600