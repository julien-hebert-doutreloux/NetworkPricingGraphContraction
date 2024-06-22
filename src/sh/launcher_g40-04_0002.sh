#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000028-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000028-000002-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000028-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000010-000079-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000010-000079-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000010-000079-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000004-000082-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000004-000082-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000004-000082-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000025-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000025-000002-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000025-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000022-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000022-000001-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000022-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000009-000091-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000009-000091-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000009-000091-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000016-000080-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000016-000080-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000016-000080-g40-04-T.pkl
sleep 600