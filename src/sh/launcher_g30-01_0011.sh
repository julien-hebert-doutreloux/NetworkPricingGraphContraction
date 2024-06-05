#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000084-000001-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000084-000001-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000084-000001-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000040-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000040-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000040-000050-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000016-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000016-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000016-000050-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000025-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000025-000002-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000025-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000047-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000047-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000047-000050-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000064-000022-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000064-000022-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000064-000022-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000008-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000008-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000008-000050-g30-01-T.pkl
sleep 600