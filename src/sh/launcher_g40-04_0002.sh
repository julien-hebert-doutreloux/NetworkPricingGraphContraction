#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000083-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000083-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000083-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000039-000032-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000039-000032-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000039-000032-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000095-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000095-000001-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000095-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000047-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000047-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000047-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000054-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000054-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000054-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000026-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000026-000002-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000026-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000056-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000056-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000056-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000077-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000077-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000077-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000059-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000059-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000059-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000016-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000016-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000016-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000082-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000082-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000082-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000024-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000024-000002-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000024-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000041-000022-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000041-000022-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000041-000022-g40-04-T.pkl
sleep 600