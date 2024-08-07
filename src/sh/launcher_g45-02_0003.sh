#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=32:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000001-000024-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000001-000024-g45-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000001-000024-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000016-000066-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000016-000066-g45-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000016-000066-g45-02-T.pkl
sleep 600