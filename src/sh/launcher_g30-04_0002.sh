#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000006-000005-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000006-000005-g30-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000006-000005-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000023-000021-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000023-000021-g30-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000023-000021-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000014-000013-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000014-000013-g30-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000014-000013-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000034-000053-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000034-000053-g30-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000034-000053-g30-04-T.pkl
sleep 600