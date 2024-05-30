#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000088-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000088-000011-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000088-000011-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000002-000093-000018-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000002-000093-000018-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000002-000093-000018-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000013-000027-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000013-000027-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000013-000027-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000108-000003-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000108-000003-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000108-000003-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000070-000012-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000070-000012-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000070-000012-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000099-000003-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000099-000003-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000099-000003-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000003-000029-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000003-000029-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000003-000029-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000032-000050-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000032-000050-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000032-000050-g50-04-T.pkl
sleep 600