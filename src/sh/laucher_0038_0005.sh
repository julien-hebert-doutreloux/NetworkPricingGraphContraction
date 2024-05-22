#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000010-000064-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000010-000064-g35-09-R.json 28.277220727 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000010-000064-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000001-000095-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000001-000095-g35-09-R.json 28.277220727 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000001-000095-g35-09-T.pkl
sleep 601