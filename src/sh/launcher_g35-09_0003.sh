#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000010-000096-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000010-000096-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000010-000096-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000018-000063-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000018-000063-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000018-000063-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000000-000019-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000000-000019-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000000-000019-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000002-000019-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000002-000019-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000002-000019-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000008-000093-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000008-000093-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000008-000093-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000019-000055-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000019-000055-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000019-000055-g35-09-T.pkl
sleep 600