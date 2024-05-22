#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=19:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/d30-02/000001-000013-000099-d30-02-P.pkl ./data/generated/problems/paper/d30-02/000001-000013-000099-d30-02-R.json 87.727323899 ./data/generated/problems/paper/d30-02/d30-02.json ./data/generated/problems/paper/d30-02/000001-000013-000099-d30-02-T.pkl
sleep 601