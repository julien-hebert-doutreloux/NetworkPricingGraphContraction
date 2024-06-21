#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=37:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000000-000003-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000000-000003-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000000-000003-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000023-000019-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000023-000019-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000023-000019-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000003-000003-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000003-000003-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000003-000003-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000031-000088-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000031-000088-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000031-000088-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000037-000076-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000037-000076-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000037-000076-g30-03-T.pkl
sleep 600