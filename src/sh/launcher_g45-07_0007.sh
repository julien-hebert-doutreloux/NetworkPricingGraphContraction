#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000028-000095-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000028-000095-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000028-000095-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000037-000072-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000037-000072-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000037-000072-g45-07-T.pkl
sleep 600