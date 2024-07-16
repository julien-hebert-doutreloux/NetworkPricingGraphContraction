#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000020-000001-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000020-000001-g30-01-R.json 183 5 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000020-000001-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000021-000001-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000021-000001-g30-01-R.json 183 5 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000021-000001-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000025-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000025-000002-g30-01-R.json 183 5 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000025-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000026-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000026-000002-g30-01-R.json 183 5 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000026-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000016-000077-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000016-000077-g30-01-R.json 183 5 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000016-000077-g30-01-T.pkl
sleep 600