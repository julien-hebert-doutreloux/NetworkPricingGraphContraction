#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000011-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000011-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000011-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000076-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000076-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000076-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000037-000013-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000037-000013-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000037-000013-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000042-000020-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000042-000020-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000042-000020-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000087-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000087-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000087-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000093-000013-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000093-000013-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000093-000013-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000002-000077-000020-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000002-000077-000020-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000002-000077-000020-g40-08-T.pkl
sleep 600