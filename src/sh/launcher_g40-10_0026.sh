#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000003-000012-000009-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000003-000012-000009-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000003-000012-000009-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000003-000042-000022-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000003-000042-000022-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000003-000042-000022-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000061-000001-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000061-000001-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000061-000001-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000002-000018-000038-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000002-000018-000038-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000002-000018-000038-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000006-000030-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000006-000030-g40-10-R.json 128 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000006-000030-g40-10-T.pkl
sleep 600