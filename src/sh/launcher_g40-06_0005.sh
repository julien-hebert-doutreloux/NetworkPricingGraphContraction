#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000010-000047-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000010-000047-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000010-000047-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000024-000080-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000024-000080-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000024-000080-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000034-000058-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000034-000058-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000034-000058-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000036-000069-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000036-000069-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000036-000069-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000025-000066-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000025-000066-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000025-000066-g40-06-T.pkl
sleep 600