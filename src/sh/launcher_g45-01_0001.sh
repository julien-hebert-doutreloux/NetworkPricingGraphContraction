#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000005-000005-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000005-000005-g45-01-R.json 64 5 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000005-000005-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000002-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000002-000003-g45-01-R.json 64 5 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000002-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000033-000075-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000033-000075-g45-01-R.json 64 5 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000033-000075-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000007-000005-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000007-000005-g45-01-R.json 64 5 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000007-000005-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000026-000070-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000026-000070-g45-01-R.json 64 5 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000026-000070-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000001-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000001-000003-g45-01-R.json 64 5 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000001-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000035-000053-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000035-000053-g45-01-R.json 64 5 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000035-000053-g45-01-T.pkl
sleep 600