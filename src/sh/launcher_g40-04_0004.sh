#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000002-000017-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000002-000017-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000002-000017-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000014-000059-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000014-000059-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000014-000059-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000023-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000023-000001-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000023-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000011-000081-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000011-000081-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000011-000081-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000019-000076-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000019-000076-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000019-000076-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000021-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000021-000001-g40-04-R.json 37 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000021-000001-g40-04-T.pkl
sleep 600