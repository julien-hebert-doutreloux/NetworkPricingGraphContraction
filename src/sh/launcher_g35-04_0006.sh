#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000063-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000063-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000063-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000084-000030-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000084-000030-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000084-000030-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000041-000001-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000041-000001-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000041-000001-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000060-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000060-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000060-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000058-000051-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000058-000051-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000058-000051-g35-04-T.pkl
sleep 600