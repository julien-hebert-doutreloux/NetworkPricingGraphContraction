#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000088-000050-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000088-000050-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000088-000050-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000003-000043-000018-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000003-000043-000018-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000003-000043-000018-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000003-000034-000022-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000003-000034-000022-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000003-000034-000022-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000101-000014-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000101-000014-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000101-000014-g30-03-T.pkl
sleep 600