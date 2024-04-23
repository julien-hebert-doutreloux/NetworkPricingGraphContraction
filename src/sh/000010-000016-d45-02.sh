#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d45-02/000010-000016-d45-02-P.pkl ./data/generated/problems/paper/d45-02/000010-000016-d45-02-R.json 648
sleep 60