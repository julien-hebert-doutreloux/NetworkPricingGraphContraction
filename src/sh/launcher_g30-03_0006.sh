#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000070-000050-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000070-000050-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000070-000050-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000054-000005-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000054-000005-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000054-000005-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000003-000023-000013-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000003-000023-000013-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000003-000023-000013-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000002-000081-000017-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000002-000081-000017-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000002-000081-000017-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000009-000050-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000009-000050-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000009-000050-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000066-000050-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000066-000050-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000066-000050-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000024-000050-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000024-000050-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000024-000050-g30-03-T.pkl
sleep 600