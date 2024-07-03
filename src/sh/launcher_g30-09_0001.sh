#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=40:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000012-000074-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000012-000074-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000012-000074-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000019-000069-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000019-000069-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000019-000069-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000002-000022-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000002-000022-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000002-000022-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000005-000082-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000005-000082-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000005-000082-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000011-000093-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000011-000093-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000011-000093-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000003-000021-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000003-000021-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000003-000021-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000017-000070-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000017-000070-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000017-000070-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000006-000080-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000006-000080-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000006-000080-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000016-000075-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000016-000075-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000016-000075-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000007-000074-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000007-000074-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000007-000074-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000014-000066-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000014-000066-g30-09-R.json 9 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000014-000066-g30-09-T.pkl
sleep 600