#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=32:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000031-000071-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000031-000071-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000031-000071-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000001-000001-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000001-000001-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000001-000001-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000029-000075-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000029-000075-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000029-000075-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000011-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000011-000002-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000011-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000000-000001-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000000-000001-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000000-000001-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000026-000068-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000026-000068-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000026-000068-g35-01-T.pkl
sleep 600