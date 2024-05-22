#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=07:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-08/000001-000002-000003-v30-08-P.pkl ./data/generated/problems/paper/v30-08/000001-000002-000003-v30-08-R.json 200 ./data/generated/problems/paper/v30-08/v30-08.json ./data/generated/problems/paper/v30-08/000001-000002-000003-v30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v30-08/000001-000007-000014-v30-08-P.pkl ./data/generated/problems/paper/v30-08/000001-000007-000014-v30-08-R.json 200 ./data/generated/problems/paper/v30-08/v30-08.json ./data/generated/problems/paper/v30-08/000001-000007-000014-v30-08-T.pkl
sleep 601