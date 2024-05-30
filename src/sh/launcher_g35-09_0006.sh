#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000010-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000010-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000010-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000050-000020-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000050-000020-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000050-000020-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000042-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000042-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000042-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000074-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000074-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000074-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000019-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000019-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000019-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000056-000038-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000056-000038-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000056-000038-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000054-000019-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000054-000019-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000054-000019-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000075-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000075-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000075-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000062-000030-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000062-000030-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000062-000030-g35-09-T.pkl
sleep 600