#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=30:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000002-000001-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000002-000001-g30-05-R.json 89 1 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000002-000001-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000030-000082-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000030-000082-g30-05-R.json 89 1 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000030-000082-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000023-000087-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000023-000087-g30-05-R.json 89 1 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000023-000087-g30-05-T.pkl
sleep 600