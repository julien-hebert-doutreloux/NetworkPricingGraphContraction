#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000017-000021-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000017-000021-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000017-000021-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000033-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000033-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000033-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000046-000051-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000046-000051-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000046-000051-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000031-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000031-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000031-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000071-000023-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000071-000023-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000071-000023-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000032-000029-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000032-000029-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000032-000029-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000039-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000039-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000039-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000066-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000066-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000066-000050-g30-08-T.pkl
sleep 600