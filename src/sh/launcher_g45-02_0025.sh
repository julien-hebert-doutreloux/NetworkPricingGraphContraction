#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000011-000049-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000011-000049-g45-02-R.json 250 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000011-000049-g45-02-T.pkl
sleep 600