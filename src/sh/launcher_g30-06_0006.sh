#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000006-000083-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000006-000083-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000006-000083-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000016-000074-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000016-000074-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000016-000074-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000023-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000023-000003-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000023-000003-g30-06-T.pkl
sleep 600