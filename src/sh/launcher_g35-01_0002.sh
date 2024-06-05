#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000093-000014-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000093-000014-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000093-000014-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000056-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000056-000002-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000056-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000053-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000053-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000053-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000013-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000013-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000013-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000067-000024-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000067-000024-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000067-000024-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000032-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000032-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000032-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000079-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000079-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000079-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000015-000023-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000015-000023-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000015-000023-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000028-000022-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000028-000022-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000028-000022-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000037-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000037-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000037-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000020-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000020-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000020-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000005-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000005-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000005-000050-g35-01-T.pkl
sleep 600