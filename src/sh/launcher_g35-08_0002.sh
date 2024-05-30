#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000022-000032-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000022-000032-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000022-000032-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000101-000024-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000101-000024-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000101-000024-g35-08-T.pkl
sleep 600