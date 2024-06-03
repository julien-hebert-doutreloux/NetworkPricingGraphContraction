#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=06:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000078-000020-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000078-000020-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000078-000020-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000068-000020-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000068-000020-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000068-000020-g35-07-T.pkl
sleep 600