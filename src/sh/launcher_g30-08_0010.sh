#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=07:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000062-000017-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000062-000017-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000062-000017-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000077-000021-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000077-000021-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000077-000021-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000073-000051-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000073-000051-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000073-000051-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000023-000019-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000023-000019-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000023-000019-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000002-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000002-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000002-000050-g30-08-T.pkl
sleep 600