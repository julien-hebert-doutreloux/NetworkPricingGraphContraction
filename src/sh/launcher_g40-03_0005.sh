#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000016-000013-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000016-000013-g40-03-R.json 131 0 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000016-000013-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000035-000065-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000035-000065-g40-03-R.json 131 0 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000035-000065-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000012-000014-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000012-000014-g40-03-R.json 131 0 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000012-000014-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000002-000003-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000002-000003-g40-03-R.json 131 0 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000002-000003-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000033-000064-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000033-000064-g40-03-R.json 131 0 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000033-000064-g40-03-T.pkl
sleep 600