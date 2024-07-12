#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:29:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000016-000088-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000016-000088-g30-07-R.json 37 1 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000016-000088-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000013-000031-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000013-000031-g30-07-R.json 37 1 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000013-000031-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000017-000087-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000017-000087-g30-07-R.json 37 1 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000017-000087-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000023-000090-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000023-000090-g30-07-R.json 37 1 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000023-000090-g30-07-T.pkl
sleep 600