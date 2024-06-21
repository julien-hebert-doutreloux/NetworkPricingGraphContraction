#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000027-000065-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000027-000065-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000027-000065-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000008-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000008-000002-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000008-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000031-000063-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000031-000063-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000031-000063-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000009-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000009-000002-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000009-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000026-000068-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000026-000068-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000026-000068-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000000-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000000-000001-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000000-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000025-000066-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000025-000066-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000025-000066-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000021-000095-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000021-000095-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000021-000095-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000014-000021-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000014-000021-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000014-000021-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000003-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000003-000001-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000003-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000012-000032-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000012-000032-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000012-000032-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000029-000069-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000029-000069-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000029-000069-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000002-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000002-000001-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000002-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000001-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000001-000001-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000001-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000011-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000011-000002-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000011-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000030-000066-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000030-000066-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000030-000066-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000022-000091-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000022-000091-g30-10-R.json 12 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000022-000091-g30-10-T.pkl
sleep 600