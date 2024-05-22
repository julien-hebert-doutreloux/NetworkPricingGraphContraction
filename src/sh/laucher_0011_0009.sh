#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=13:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000000-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000000-000002-g35-04-R.json 67.472126547 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000000-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000004-000087-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000004-000087-g35-04-R.json 67.472126547 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000004-000087-g35-04-T.pkl
sleep 601