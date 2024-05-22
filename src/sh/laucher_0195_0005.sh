#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=36:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000009-000082-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000009-000082-g30-02-R.json 200 ./data/generated/problems/paper/g30-02/g30-02.json ./data/generated/problems/paper/g30-02/000001-000009-000082-g30-02-T.pkl
sleep 601