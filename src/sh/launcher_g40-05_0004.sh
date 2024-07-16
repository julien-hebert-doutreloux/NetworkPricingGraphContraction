#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000021-000015-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000021-000015-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000021-000015-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000002-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000002-000005-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000002-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000018-000032-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000018-000032-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000018-000032-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000033-000061-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000033-000061-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000033-000061-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000015-000031-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000015-000031-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000015-000031-g40-05-T.pkl
sleep 600