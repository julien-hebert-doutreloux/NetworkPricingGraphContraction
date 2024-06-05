#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000043-000005-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000043-000005-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000043-000005-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000103-000014-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000103-000014-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000103-000014-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000002-000071-000051-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000002-000071-000051-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000002-000071-000051-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000002-000094-000031-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000002-000094-000031-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000002-000094-000031-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000102-000014-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000102-000014-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000102-000014-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000040-000050-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000040-000050-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000040-000050-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000056-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000056-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000056-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000029-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000029-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000029-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000078-000050-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000078-000050-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000078-000050-g50-01-T.pkl
sleep 600