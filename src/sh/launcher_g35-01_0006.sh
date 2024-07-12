#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000004-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000004-000002-g35-01-R.json 75 1 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000004-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000003-000001-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000003-000001-g35-01-R.json 75 1 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000003-000001-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000018-000077-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000018-000077-g35-01-R.json 75 1 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000018-000077-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000009-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000009-000002-g35-01-R.json 75 1 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000009-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000016-000091-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000016-000091-g35-01-R.json 75 1 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000016-000091-g35-01-T.pkl
sleep 600