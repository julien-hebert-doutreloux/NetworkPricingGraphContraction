#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000004-000026-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000004-000026-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000004-000026-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000013-000039-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000013-000039-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000013-000039-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000026-000069-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000026-000069-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000026-000069-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000014-000039-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000014-000039-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000014-000039-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000000-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000000-000007-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000000-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000015-000040-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000015-000040-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000015-000040-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000027-000067-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000027-000067-g40-06-R.json 39 1 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000027-000067-g40-06-T.pkl
sleep 600