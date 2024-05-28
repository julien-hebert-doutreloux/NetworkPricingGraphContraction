#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000018-000047-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000018-000047-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000018-000047-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000016-000048-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000016-000048-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000016-000048-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000011-000046-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000011-000046-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000011-000046-g40-04-T.pkl
sleep 600