#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=48:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000017-000013-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000017-000013-g30-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000017-000013-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000013-000014-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000013-000014-g30-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000013-000014-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000015-000014-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000015-000014-g30-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000015-000014-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000005-000005-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000005-000005-g30-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000005-000005-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000004-000005-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000004-000005-g30-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000004-000005-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000036-000082-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000036-000082-g30-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000036-000082-g30-04-T.pkl
sleep 600