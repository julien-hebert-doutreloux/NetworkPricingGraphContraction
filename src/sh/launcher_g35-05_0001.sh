#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=21:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000068-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000068-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000068-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000094-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000094-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000094-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000026-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000026-000002-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000026-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000006-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000006-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000006-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000010-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000010-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000010-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000077-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000077-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000077-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000008-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000008-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000008-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000033-000021-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000033-000021-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000033-000021-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000065-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000065-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000065-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000041-000031-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000041-000031-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000041-000031-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000029-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000029-000002-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000029-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000040-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000040-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000040-000050-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000084-000001-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000084-000001-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000084-000001-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000001-000047-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000001-000047-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000001-000047-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000027-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000027-000002-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000027-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000078-000051-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000078-000051-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000078-000051-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000003-000079-000023-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000003-000079-000023-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000003-000079-000023-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000054-000051-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000054-000051-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000054-000051-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000048-000051-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000048-000051-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000048-000051-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000003-000049-000019-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000003-000049-000019-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000003-000049-000019-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000019-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000019-000002-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000019-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000039-000050-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000039-000050-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000039-000050-g35-05-T.pkl
sleep 600