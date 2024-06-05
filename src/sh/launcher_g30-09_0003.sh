#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:21:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000054-000039-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000054-000039-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000054-000039-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000002-000028-000051-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000002-000028-000051-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000002-000028-000051-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000077-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000077-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000077-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000080-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000080-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000080-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000058-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000058-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000058-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000002-000025-000051-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000002-000025-000051-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000002-000025-000051-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000038-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000038-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000038-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000050-000033-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000050-000033-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000050-000033-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000003-000017-000023-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000003-000017-000023-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000003-000017-000023-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000003-000073-000021-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000003-000073-000021-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000003-000073-000021-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000003-000008-000018-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000003-000008-000018-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000003-000008-000018-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000006-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000006-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000006-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000002-000045-000025-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000002-000045-000025-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000002-000045-000025-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000015-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000015-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000015-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000003-000067-000006-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000003-000067-000006-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000003-000067-000006-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000002-000049-000023-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000002-000049-000023-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000002-000049-000023-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000021-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000021-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000021-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000002-000022-000051-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000002-000022-000051-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000002-000022-000051-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000027-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000027-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000027-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000002-000081-000051-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000002-000081-000051-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000002-000081-000051-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000063-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000063-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000063-000050-g30-09-T.pkl
sleep 600