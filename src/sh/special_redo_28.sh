#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=11:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000072-000022-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000072-000022-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000072-000022-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000003-000026-000022-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000003-000026-000022-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000003-000026-000022-g45-02-T.pkl
sleep 600