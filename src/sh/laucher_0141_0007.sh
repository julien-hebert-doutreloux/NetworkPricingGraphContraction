#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=03:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000013-000065-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000013-000065-g40-02-R.json 19.625954462 ./data/generated/problems/paper/g40-02/g40-02.json ./data/generated/problems/paper/g40-02/000001-000013-000065-g40-02-T.pkl
sleep 601