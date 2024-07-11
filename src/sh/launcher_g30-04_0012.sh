#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=52:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000039-000075-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000039-000075-g30-04-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000039-000075-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000029-000097-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000029-000097-g30-04-R.json 200 0 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000029-000097-g30-04-T.pkl
sleep 600