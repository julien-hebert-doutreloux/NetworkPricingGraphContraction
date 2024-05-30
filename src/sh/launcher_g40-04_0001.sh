#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000035-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000035-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000035-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000017-000020-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000017-000020-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000017-000020-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000040-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000040-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000040-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000027-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000027-000002-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000027-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000062-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000062-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000062-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000042-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000042-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000042-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000006-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000006-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000006-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000002-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000002-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000002-000050-g40-04-T.pkl
sleep 600