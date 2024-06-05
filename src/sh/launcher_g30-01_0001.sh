#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000089-000001-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000089-000001-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000089-000001-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000054-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000054-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000054-000051-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000094-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000094-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000094-000050-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000020-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000020-000002-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000020-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000032-000020-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000032-000020-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000032-000020-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000041-000028-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000041-000028-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000041-000028-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000070-000015-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000070-000015-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000070-000015-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000087-000019-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000087-000019-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000087-000019-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000079-000022-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000079-000022-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000079-000022-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000066-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000066-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000066-000051-g30-01-T.pkl
sleep 600