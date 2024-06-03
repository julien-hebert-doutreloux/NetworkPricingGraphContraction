#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=05:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000003-000022-000015-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000003-000022-000015-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000003-000022-000015-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000113-000015-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000113-000015-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000113-000015-g40-05-T.pkl
sleep 600