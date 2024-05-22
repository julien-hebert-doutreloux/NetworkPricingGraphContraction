#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=03:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000004-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000004-000005-g35-06-R.json 14.876039898 ./data/generated/problems/paper/g35-06/g35-06.json ./data/generated/problems/paper/g35-06/000001-000004-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000009-000085-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000009-000085-g35-06-R.json 14.876039898 ./data/generated/problems/paper/g35-06/g35-06.json ./data/generated/problems/paper/g35-06/000001-000009-000085-g35-06-T.pkl
sleep 601