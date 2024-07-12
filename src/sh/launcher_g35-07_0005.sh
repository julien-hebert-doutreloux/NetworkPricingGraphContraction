#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000001-000001-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000001-000001-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000001-000001-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000026-000069-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000026-000069-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000026-000069-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000008-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000008-000002-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000008-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000011-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000011-000002-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000011-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000024-000076-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000024-000076-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000024-000076-g35-07-T.pkl
sleep 600