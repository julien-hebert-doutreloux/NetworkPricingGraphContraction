#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=56:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000013-000063-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000013-000063-g45-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000013-000063-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000010-000094-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000010-000094-g45-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000010-000094-g45-02-T.pkl
sleep 600