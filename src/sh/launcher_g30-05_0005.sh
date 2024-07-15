#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:02:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000027-000067-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000027-000067-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000027-000067-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000003-000001-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000003-000001-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000003-000001-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000019-000061-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000019-000061-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000019-000061-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000000-000001-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000000-000001-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000000-000001-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000013-000026-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000013-000026-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000013-000026-g30-05-T.pkl
sleep 600