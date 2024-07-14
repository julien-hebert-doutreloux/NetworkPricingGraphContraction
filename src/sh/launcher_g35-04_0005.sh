#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000022-000097-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000022-000097-g35-04-R.json 69 2 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000022-000097-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000001-000001-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000001-000001-g35-04-R.json 69 2 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000001-000001-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000023-000085-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000023-000085-g35-04-R.json 69 2 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000023-000085-g35-04-T.pkl
sleep 600