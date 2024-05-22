#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=26:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000003-000003-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000003-000003-g35-03-R.json 138.127475701 ./data/generated/problems/paper/g35-03/g35-03.json ./data/generated/problems/paper/g35-03/000001-000003-000003-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000009-000082-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000009-000082-g35-03-R.json 138.127475701 ./data/generated/problems/paper/g35-03/g35-03.json ./data/generated/problems/paper/g35-03/000001-000009-000082-g35-03-T.pkl
sleep 601