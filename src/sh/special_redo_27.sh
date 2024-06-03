#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=08:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000070-000022-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000070-000022-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000070-000022-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000084-000022-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000084-000022-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000084-000022-g35-08-T.pkl
sleep 600