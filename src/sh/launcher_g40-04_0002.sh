#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000033-000017-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000033-000017-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000033-000017-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000023-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000023-000002-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000023-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000067-000020-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000067-000020-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000067-000020-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000085-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000085-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000085-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000061-000019-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000061-000019-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000061-000019-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000005-000017-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000005-000017-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000005-000017-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000066-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000066-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000066-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000083-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000083-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000083-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000039-000032-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000039-000032-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000039-000032-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000095-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000095-000001-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000095-000001-g40-04-T.pkl
sleep 600