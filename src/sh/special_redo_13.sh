#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=10:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000003-000030-000016-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000003-000030-000016-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000003-000030-000016-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000003-000043-000017-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000003-000043-000017-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000003-000043-000017-g30-04-T.pkl
sleep 600