#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000012-000001-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000012-000001-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000012-000001-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000011-000021-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000011-000021-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000011-000021-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000086-000051-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000086-000051-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000086-000051-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000055-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000055-000002-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000055-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000065-000032-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000065-000032-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000065-000032-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000048-000024-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000048-000024-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000048-000024-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000057-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000057-000002-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000057-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000003-000021-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000003-000021-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000003-000021-g35-01-T.pkl
sleep 600