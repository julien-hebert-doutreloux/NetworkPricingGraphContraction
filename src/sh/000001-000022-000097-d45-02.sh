#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G
#SBATCH --time=17:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-02/000001-000022-000097-d45-02-P.pkl ./data/generated/problems/paper/d45-02/000001-000022-000097-d45-02-R.json 648
sleep 600