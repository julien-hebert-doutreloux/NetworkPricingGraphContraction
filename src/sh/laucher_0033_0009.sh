#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=09:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000003-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000003-000002-g30-07-R.json 42.450662467 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000003-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000011-000094-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000011-000094-g30-07-R.json 42.450662467 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000011-000094-g30-07-T.pkl
sleep 601