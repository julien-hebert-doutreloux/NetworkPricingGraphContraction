#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000031-000086-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000031-000086-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000031-000086-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000006-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000006-000014-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000006-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000016-000032-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000016-000032-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000016-000032-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000009-000019-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000009-000019-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000009-000019-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000010-000018-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000010-000018-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000010-000018-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000037-000065-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000037-000065-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000037-000065-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000039-000062-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000039-000062-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000039-000062-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000032-000064-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000032-000064-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000032-000064-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000027-000063-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000027-000063-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000027-000063-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000026-000064-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000026-000064-g40-05-R.json 14 4 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000026-000064-g40-05-T.pkl
sleep 600