#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000001-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000001-000001-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000001-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000011-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000011-000002-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000011-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000030-000066-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000030-000066-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000030-000066-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000022-000091-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000022-000091-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000022-000091-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000004-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000004-000002-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000004-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000018-000076-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000018-000076-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000018-000076-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000017-000081-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000017-000081-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000017-000081-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000016-000088-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000016-000088-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000016-000088-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000005-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000005-000002-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000005-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000023-000094-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000023-000094-g30-10-R.json 12 5 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000023-000094-g30-10-T.pkl
sleep 600