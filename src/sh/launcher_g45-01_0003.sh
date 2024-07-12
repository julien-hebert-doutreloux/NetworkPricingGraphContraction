#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000030-000091-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000030-000091-g45-01-R.json 64 1 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000030-000091-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000014-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000014-000014-g45-01-R.json 64 1 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000014-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000013-000013-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000013-000013-g45-01-R.json 64 1 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000013-000013-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000012-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000012-000014-g45-01-R.json 64 1 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000012-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000024-000086-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000024-000086-g45-01-R.json 64 1 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000024-000086-g45-01-T.pkl
sleep 600