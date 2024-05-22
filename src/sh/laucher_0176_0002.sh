#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=07:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-03/000001-000018-000099-d30-03-P.pkl ./data/generated/problems/paper/d30-03/000001-000018-000099-d30-03-R.json 35.143952224 ./data/generated/problems/paper/d30-03/d30-03.json ./data/generated/problems/paper/d30-03/000001-000018-000099-d30-03-T.pkl
sleep 601