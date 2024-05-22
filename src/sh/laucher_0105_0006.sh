#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=37:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-04/000001-000003-000002-v30-04-P.pkl ./data/generated/problems/paper/v30-04/000001-000003-000002-v30-04-R.json 200 ./data/generated/problems/paper/v30-04/v30-04.json ./data/generated/problems/paper/v30-04/000001-000003-000002-v30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v30-04/000001-000016-000081-v30-04-P.pkl ./data/generated/problems/paper/v30-04/000001-000016-000081-v30-04-R.json 200 ./data/generated/problems/paper/v30-04/v30-04.json ./data/generated/problems/paper/v30-04/000001-000016-000081-v30-04-T.pkl
sleep 601