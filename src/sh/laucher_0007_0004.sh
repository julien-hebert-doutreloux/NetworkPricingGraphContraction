#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:05:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000019-000075-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000019-000075-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000019-000075-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000012-000099-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000012-000099-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000012-000099-g35-06-T.pkl
sleep 601