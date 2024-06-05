#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000033-000019-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000033-000019-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000033-000019-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000023-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000023-000002-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000023-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000026-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000026-000002-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000026-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000067-000021-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000067-000021-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000067-000021-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000086-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000086-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000086-000051-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000076-000022-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000076-000022-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000076-000022-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000062-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000062-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000062-000050-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000088-000001-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000088-000001-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000088-000001-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000045-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000045-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000045-000051-g30-01-T.pkl
sleep 600