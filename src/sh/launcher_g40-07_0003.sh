#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000058-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000058-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000058-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000024-000047-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000024-000047-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000024-000047-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000081-000023-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000081-000023-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000081-000023-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000037-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000037-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000037-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000055-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000055-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000055-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000061-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000061-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000061-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000025-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000025-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000025-000050-g40-07-T.pkl
sleep 600