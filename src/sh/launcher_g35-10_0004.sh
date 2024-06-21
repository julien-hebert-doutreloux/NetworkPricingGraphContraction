#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:02:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000001-000016-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000001-000016-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000001-000016-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000017-000071-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000017-000071-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000017-000071-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000026-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000026-000002-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000026-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000006-000067-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000006-000067-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000006-000067-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000028-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000028-000002-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000028-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000010-000088-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000010-000088-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000010-000088-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000007-000065-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000007-000065-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000007-000065-g35-10-T.pkl
sleep 600