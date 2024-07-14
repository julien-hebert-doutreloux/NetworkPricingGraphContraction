#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=30:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000006-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000006-000002-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000006-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000026-000063-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000026-000063-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000026-000063-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000007-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000007-000002-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000007-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000001-000001-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000001-000001-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000001-000001-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000003-000001-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000003-000001-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000003-000001-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000031-000078-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000031-000078-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000031-000078-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000029-000086-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000029-000086-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000029-000086-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000024-000076-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000024-000076-g40-09-R.json 42 2 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000024-000076-g40-09-T.pkl
sleep 600