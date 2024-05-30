#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000002-000099-000022-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000002-000099-000022-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000002-000099-000022-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000104-000014-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000104-000014-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000104-000014-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000076-000050-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000076-000050-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000076-000050-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000002-000097-000024-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000002-000097-000024-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000002-000097-000024-g45-07-T.pkl
sleep 600