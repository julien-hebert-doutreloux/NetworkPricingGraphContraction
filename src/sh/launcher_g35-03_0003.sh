#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=30:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000020-000036-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000020-000036-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000020-000036-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000001-000003-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000001-000003-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000001-000003-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000019-000014-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000019-000014-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000019-000014-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000006-000005-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000006-000005-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000006-000005-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000010-000003-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000010-000003-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000010-000003-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000021-000032-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000021-000032-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000021-000032-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000005-000005-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000005-000005-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000005-000005-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000025-000084-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000025-000084-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000025-000084-g35-03-T.pkl
sleep 600