#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000023-000087-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000023-000087-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000023-000087-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000025-000069-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000025-000069-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000025-000069-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000002-000001-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000002-000001-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000002-000001-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000017-000086-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000017-000086-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000017-000086-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000019-000070-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000019-000070-g40-09-R.json 49 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000019-000070-g40-09-T.pkl
sleep 600