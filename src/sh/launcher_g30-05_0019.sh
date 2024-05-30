#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000005-000050-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000005-000050-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000005-000050-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000002-000036-000044-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000002-000036-000044-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000002-000036-000044-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000073-000001-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000073-000001-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000073-000001-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000037-000050-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000037-000050-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000037-000050-g30-05-T.pkl
sleep 600