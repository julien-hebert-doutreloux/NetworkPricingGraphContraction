#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=50:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000038-000073-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000038-000073-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000038-000073-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000028-000095-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000028-000095-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000028-000095-g45-04-T.pkl
sleep 600