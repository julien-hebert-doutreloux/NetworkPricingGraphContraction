#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000053-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000053-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000053-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000062-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000062-000002-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000062-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000081-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000081-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000081-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000001-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000001-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000001-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000063-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000063-000002-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000063-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000080-000008-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000080-000008-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000080-000008-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000029-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000029-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000029-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000019-000023-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000019-000023-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000019-000023-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000074-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000074-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000074-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000094-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000094-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000094-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000092-000017-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000092-000017-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000092-000017-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000024-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000024-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000024-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000038-000026-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000038-000026-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000038-000026-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000010-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000010-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000010-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000027-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000027-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000027-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000028-000023-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000028-000023-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000028-000023-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000006-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000006-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000006-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000025-000023-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000025-000023-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000025-000023-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000066-000027-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000066-000027-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000066-000027-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000058-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000058-000002-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000058-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000071-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000071-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000071-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000012-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000012-000001-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000012-000001-g30-10-T.pkl
sleep 600