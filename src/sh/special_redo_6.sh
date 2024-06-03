#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=06:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000030-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000030-000007-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000030-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000003-000027-000011-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000003-000027-000011-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000003-000027-000011-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000077-000011-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000077-000011-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000077-000011-g50-04-T.pkl
sleep 600