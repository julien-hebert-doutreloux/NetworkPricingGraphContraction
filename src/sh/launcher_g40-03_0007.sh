#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000039-000076-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000039-000076-g40-03-R.json 131 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000039-000076-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000021-000033-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000021-000033-g40-03-R.json 131 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000021-000033-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000020-000033-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000020-000033-g40-03-R.json 131 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000020-000033-g40-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000015-000014-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000015-000014-g40-03-R.json 131 ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/g40-03/000001-000015-000014-g40-03-T.pkl
sleep 600