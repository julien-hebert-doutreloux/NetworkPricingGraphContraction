#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000025-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000025-000003-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000025-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000011-000083-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000011-000083-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000011-000083-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000012-000068-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000012-000068-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000012-000068-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000000-000036-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000000-000036-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000000-000036-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000033-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000033-000007-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000033-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000032-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000032-000007-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000032-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000024-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000024-000003-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000024-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000026-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000026-000003-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000026-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000001-000036-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000001-000036-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000001-000036-g30-06-T.pkl
sleep 600