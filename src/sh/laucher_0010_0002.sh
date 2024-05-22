#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000012-000080-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000012-000080-g35-02-R.json 26.935473512 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000012-000080-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000009-000097-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000009-000097-g35-02-R.json 26.935473512 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000009-000097-g35-02-T.pkl
sleep 601