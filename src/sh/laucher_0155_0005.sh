#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=13:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000001-000002-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000001-000002-g30-05-R.json 88.901682753 ./data/generated/problems/paper/g30-05/g30-05.json ./data/generated/problems/paper/g30-05/000001-000001-000002-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000016-000065-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000016-000065-g30-05-R.json 88.901682753 ./data/generated/problems/paper/g30-05/g30-05.json ./data/generated/problems/paper/g30-05/000001-000016-000065-g30-05-T.pkl
sleep 601