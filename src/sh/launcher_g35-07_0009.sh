#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=22:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000051-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000051-000002-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000051-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000045-000050-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000045-000050-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000045-000050-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000002-000024-000051-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000002-000024-000051-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000002-000024-000051-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000000-000001-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000000-000001-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000000-000001-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000002-000088-000051-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000002-000088-000051-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000002-000088-000051-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000002-000048-000022-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000002-000048-000022-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000002-000048-000022-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000093-000050-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000093-000050-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000093-000050-g35-07-T.pkl
sleep 600