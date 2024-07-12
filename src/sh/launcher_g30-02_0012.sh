#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000032-000071-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000032-000071-g30-02-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000032-000071-g30-02-T.pkl
sleep 600