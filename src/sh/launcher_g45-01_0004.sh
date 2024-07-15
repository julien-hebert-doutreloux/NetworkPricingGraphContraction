#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=31:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000038-000078-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000038-000078-g45-01-R.json 64 4 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000038-000078-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000027-000068-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000027-000068-g45-01-R.json 64 4 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000027-000068-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000031-000086-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000031-000086-g45-01-R.json 64 4 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000031-000086-g45-01-T.pkl
sleep 600