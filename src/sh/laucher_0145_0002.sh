#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=03:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000008-000073-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000008-000073-g30-09-R.json 9.666946764 ./data/generated/problems/paper/g30-09/g30-09.json ./data/generated/problems/paper/g30-09/000001-000008-000073-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000011-000066-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000011-000066-g30-09-R.json 9.666946764 ./data/generated/problems/paper/g30-09/g30-09.json ./data/generated/problems/paper/g30-09/000001-000011-000066-g30-09-T.pkl
sleep 601