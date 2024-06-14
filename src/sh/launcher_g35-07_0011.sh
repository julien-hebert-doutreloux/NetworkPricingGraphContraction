#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000013-000001-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000013-000001-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000013-000001-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000041-000050-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000041-000050-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000041-000050-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000003-000025-000023-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000003-000025-000023-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000003-000025-000023-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000010-000050-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000010-000050-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000010-000050-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000003-000019-000023-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000003-000019-000023-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000003-000019-000023-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000060-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000060-000002-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000060-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000096-000050-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000096-000050-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000096-000050-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000062-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000062-000002-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000062-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000002-000021-000051-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000002-000021-000051-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000002-000021-000051-g35-07-T.pkl
sleep 600