#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000011-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000011-000002-g40-09-R.json 42 3 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000011-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000017-000087-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000017-000087-g40-09-R.json 42 3 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000017-000087-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-R.json 42 3 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000013-000036-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000013-000036-g40-09-R.json 42 3 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000013-000036-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000014-000030-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000014-000030-g40-09-R.json 42 3 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000014-000030-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000002-000001-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000002-000001-g40-09-R.json 42 3 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000002-000001-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000018-000084-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000018-000084-g40-09-R.json 42 3 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000018-000084-g40-09-T.pkl
sleep 600