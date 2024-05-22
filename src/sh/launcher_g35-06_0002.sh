#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000036-000049-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000036-000049-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000036-000049-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000016-000024-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000016-000024-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000016-000024-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000032-000049-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000032-000049-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000032-000049-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000011-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000011-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000011-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000000-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000000-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000000-000003-g35-06-T.pkl
sleep 600