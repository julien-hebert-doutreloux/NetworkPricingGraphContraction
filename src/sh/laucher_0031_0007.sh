#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=12:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000001-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000001-000002-g35-01-R.json 70.734307133 ./data/generated/problems/paper/g35-01/g35-01.json ./data/generated/problems/paper/g35-01/000001-000001-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000013-000074-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000013-000074-g35-01-R.json 70.734307133 ./data/generated/problems/paper/g35-01/g35-01.json ./data/generated/problems/paper/g35-01/000001-000013-000074-g35-01-T.pkl
sleep 601