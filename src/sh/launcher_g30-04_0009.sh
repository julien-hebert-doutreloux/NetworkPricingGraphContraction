#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000066-000003-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000066-000003-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000066-000003-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000005-000050-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000005-000050-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000005-000050-g30-04-T.pkl
sleep 600