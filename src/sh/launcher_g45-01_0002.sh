#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000010-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000010-000003-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000010-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000000-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000000-000003-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000000-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000021-000026-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000021-000026-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000021-000026-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000003-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000003-000003-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000003-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000011-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000011-000003-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000011-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000017-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000017-000014-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000017-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000008-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000008-000003-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000008-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000039-000066-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000039-000066-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000039-000066-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000018-000013-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000018-000013-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000018-000013-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000020-000029-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000020-000029-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000020-000029-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000016-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000016-000014-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000016-000014-g45-01-T.pkl
sleep 600