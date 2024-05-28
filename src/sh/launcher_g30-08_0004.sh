#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000006-000044-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000006-000044-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000006-000044-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000003-000017-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000003-000017-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000003-000017-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000001-000019-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000001-000019-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000001-000019-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000021-000049-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000021-000049-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000021-000049-g30-08-T.pkl
sleep 600