#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000008-000021-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000008-000021-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000008-000021-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000066-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000066-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000066-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000068-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000068-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000068-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000077-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000077-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000077-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000065-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000065-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000065-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000000-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000000-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000000-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000040-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000040-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000040-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000070-000008-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000070-000008-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000070-000008-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000014-000019-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000014-000019-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000014-000019-g35-09-T.pkl
sleep 600