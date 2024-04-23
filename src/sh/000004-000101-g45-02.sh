#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=11:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000004-000101-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000004-000101-g45-02-R.json 393
sleep 60