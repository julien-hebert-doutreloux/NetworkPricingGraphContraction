#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000009-000018-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000009-000018-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000009-000018-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000022-000049-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000022-000049-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000022-000049-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000028-000049-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000028-000049-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000028-000049-g35-05-T.pkl
sleep 600