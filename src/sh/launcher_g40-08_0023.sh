#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=23:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000035-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000035-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000035-000050-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000103-000018-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000103-000018-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000103-000018-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000019-000006-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000019-000006-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000019-000006-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000047-000005-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000047-000005-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000047-000005-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000039-000050-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000039-000050-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000039-000050-g40-08-T.pkl
sleep 600