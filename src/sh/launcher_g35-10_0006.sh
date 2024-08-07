#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000022-000001-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000022-000001-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000022-000001-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000021-000001-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000021-000001-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000021-000001-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000005-000056-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000005-000056-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000005-000056-g35-10-T.pkl
sleep 600