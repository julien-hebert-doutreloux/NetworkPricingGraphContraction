#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000005-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000005-000002-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000005-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000015-000021-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000015-000021-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000015-000021-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000008-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000008-000002-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000008-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000025-000071-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000025-000071-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000025-000071-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000021-000095-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000021-000095-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000021-000095-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000007-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000007-000002-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000007-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000009-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000009-000002-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000009-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000014-000029-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000014-000029-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000014-000029-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000012-000036-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000012-000036-g30-07-R.json 37 2 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000012-000036-g30-07-T.pkl
sleep 600