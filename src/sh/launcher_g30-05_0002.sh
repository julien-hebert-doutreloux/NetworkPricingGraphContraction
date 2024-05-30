#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000002-000011-000051-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000002-000011-000051-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000002-000011-000051-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000002-000023-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000002-000023-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000002-000023-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000062-000002-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000062-000002-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000062-000002-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000002-000044-000017-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000002-000044-000017-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000002-000044-000017-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000078-000050-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000078-000050-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000078-000050-g30-05-T.pkl
sleep 600