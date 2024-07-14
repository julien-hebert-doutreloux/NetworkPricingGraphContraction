#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=32:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000031-000083-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000031-000083-g45-07-R.json 105 2 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000031-000083-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000018-000014-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000018-000014-g45-07-R.json 105 2 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000018-000014-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000033-000063-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000033-000063-g45-07-R.json 105 2 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000033-000063-g45-07-T.pkl
sleep 600