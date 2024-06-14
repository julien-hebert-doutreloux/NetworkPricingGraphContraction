#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000102-000018-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000102-000018-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000102-000018-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000033-000017-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000033-000017-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000033-000017-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000024-000020-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000024-000020-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000024-000020-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000011-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000011-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000011-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000076-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000076-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000076-000050-g40-08-T.pkl
sleep 600