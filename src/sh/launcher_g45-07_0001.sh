#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000035-000058-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000035-000058-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000035-000058-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000025-000079-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000025-000079-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000025-000079-g45-07-T.pkl
sleep 600