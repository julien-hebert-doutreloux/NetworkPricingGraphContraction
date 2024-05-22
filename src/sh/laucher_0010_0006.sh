#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=45:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/v30-02/000001-000002-000003-v30-02-P.pkl ./data/generated/problems/paper/v30-02/000001-000002-000003-v30-02-R.json 200 ./data/generated/problems/paper/v30-02/v30-02.json ./data/generated/problems/paper/v30-02/000001-000002-000003-v30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/v30-02/000001-000016-000099-v30-02-P.pkl ./data/generated/problems/paper/v30-02/000001-000016-000099-v30-02-R.json 200 ./data/generated/problems/paper/v30-02/v30-02.json ./data/generated/problems/paper/v30-02/000001-000016-000099-v30-02-T.pkl
sleep 601