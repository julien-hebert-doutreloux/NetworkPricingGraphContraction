#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=30:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000018-000078-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000018-000078-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000018-000078-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000000-000001-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000000-000001-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000000-000001-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000023-000081-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000023-000081-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000023-000081-g35-07-T.pkl
sleep 600