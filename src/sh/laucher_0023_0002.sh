#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000002-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000002-000002-g35-05-R.json 17.674245691 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000002-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000012-000068-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000012-000068-g35-05-R.json 17.674245691 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000012-000068-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000001-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000001-000002-g35-05-R.json 17.674245691 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000001-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000015-000068-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000015-000068-g35-05-R.json 17.674245691 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000015-000068-g35-05-T.pkl
sleep 601