#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=02:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h35-02/000001-000000-000005-h35-02-P.pkl ./data/generated/problems/paper/h35-02/000001-000000-000005-h35-02-R.json 200 ./data/generated/problems/paper/h35-02/h35-02.json ./data/generated/problems/paper/h35-02/000001-000000-000005-h35-02-T.pkl
sleep 601