#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=11:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000002-000089-000024-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000002-000089-000024-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000002-000089-000024-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000068-000024-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000068-000024-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000068-000024-g35-01-T.pkl
sleep 600