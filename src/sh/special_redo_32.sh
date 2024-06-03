#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=07:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000008-000023-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000008-000023-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000008-000023-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000003-000038-000023-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000003-000038-000023-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000003-000038-000023-g35-03-T.pkl
sleep 600