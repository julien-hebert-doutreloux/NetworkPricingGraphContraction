#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=45:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/h50-02/000001-000001-000002-h50-02-P.pkl ./data/generated/problems/paper/h50-02/000001-000001-000002-h50-02-R.json 200 ./data/generated/problems/paper/h50-02/h50-02.json ./data/generated/problems/paper/h50-02/000001-000001-000002-h50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/h50-02/000001-000008-000099-h50-02-P.pkl ./data/generated/problems/paper/h50-02/000001-000008-000099-h50-02-R.json 200 ./data/generated/problems/paper/h50-02/h50-02.json ./data/generated/problems/paper/h50-02/000001-000008-000099-h50-02-T.pkl
sleep 601