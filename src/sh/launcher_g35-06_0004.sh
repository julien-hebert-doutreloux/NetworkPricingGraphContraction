#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000048-000051-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000048-000051-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000048-000051-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000063-000023-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000063-000023-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000063-000023-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000000-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000000-000014-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000000-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000035-000009-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000035-000009-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000035-000009-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000065-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000065-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000065-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000019-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000019-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000019-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000040-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000040-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000040-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000061-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000061-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000061-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000029-000020-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000029-000020-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000029-000020-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000003-000049-000022-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000003-000049-000022-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000003-000049-000022-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000011-000051-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000011-000051-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000011-000051-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000042-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000042-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000042-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000070-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000070-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000070-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000069-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000069-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000069-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000081-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000081-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000081-000050-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000002-000095-000035-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000002-000095-000035-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000002-000095-000035-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000033-000050-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000033-000050-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000033-000050-g35-06-T.pkl
sleep 600