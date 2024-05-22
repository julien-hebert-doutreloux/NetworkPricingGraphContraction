#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=43:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h45-02/000001-000017-000097-h45-02-P.pkl ./data/generated/problems/paper/h45-02/000001-000017-000097-h45-02-R.json 200 ./data/generated/problems/paper/h45-02/h45-02.json ./data/generated/problems/paper/h45-02/000001-000017-000097-h45-02-T.pkl
sleep 601