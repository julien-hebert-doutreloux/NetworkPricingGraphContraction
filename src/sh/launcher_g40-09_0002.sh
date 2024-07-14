#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000022-000096-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000022-000096-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000022-000096-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000008-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000008-000002-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000008-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000019-000074-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000019-000074-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000019-000074-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000016-000092-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000016-000092-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000016-000092-g40-09-T.pkl
sleep 600