#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000016-000080-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000016-000080-g40-04-R.json 37 5 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000016-000080-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000031-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000031-000002-g40-04-R.json 37 5 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000031-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000018-000071-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000018-000071-g40-04-R.json 37 5 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000018-000071-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000006-000056-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000006-000056-g40-04-R.json 37 5 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000006-000056-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000000-000027-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000000-000027-g40-04-R.json 37 5 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000000-000027-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000017-000071-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000017-000071-g40-04-R.json 37 5 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000017-000071-g40-04-T.pkl
sleep 600