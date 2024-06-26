#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000018-000063-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000018-000063-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000018-000063-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000000-000019-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000000-000019-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000000-000019-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000002-000019-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000002-000019-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000002-000019-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000008-000093-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000008-000093-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000008-000093-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000019-000055-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000019-000055-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000019-000055-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000003-000020-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000003-000020-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000003-000020-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000005-000074-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000005-000074-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000005-000074-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000011-000096-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000011-000096-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000011-000096-g35-09-T.pkl
sleep 600