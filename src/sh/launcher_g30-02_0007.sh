#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000037-000066-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000037-000066-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000037-000066-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000011-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000011-000003-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000011-000003-g30-02-T.pkl
sleep 600