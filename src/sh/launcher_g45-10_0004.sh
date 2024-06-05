#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000002-000054-000007-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000002-000054-000007-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000002-000054-000007-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000002-000019-000032-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000002-000019-000032-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000002-000019-000032-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000002-000009-000048-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000002-000009-000048-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000002-000009-000048-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000003-000012-000013-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000003-000012-000013-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000003-000012-000013-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000063-000050-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000063-000050-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000063-000050-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000002-000017-000029-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000002-000017-000029-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000002-000017-000029-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000000-000050-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000000-000050-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000000-000050-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000002-000058-000008-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000002-000058-000008-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000002-000058-000008-g45-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-10/000001-000059-000050-g45-10-P.pkl ./data/generated/problems/paper/g45-10/000001-000059-000050-g45-10-R.json 142 ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/g45-10/000001-000059-000050-g45-10-T.pkl
sleep 600