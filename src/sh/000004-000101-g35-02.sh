#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000004-000101-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000004-000101-g35-02-R.json 122
sleep 60