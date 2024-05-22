#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=11:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000002-000023-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000002-000023-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000002-000023-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000035-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000035-000003-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000035-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000015-000048-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000015-000048-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000015-000048-g30-06-T.pkl
sleep 600