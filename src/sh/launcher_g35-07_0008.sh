#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=35:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000006-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000006-000002-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000006-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000007-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000007-000002-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000007-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000014-000031-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000014-000031-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000014-000031-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000004-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000004-000002-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000004-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000025-000077-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000025-000077-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000025-000077-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000027-000067-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000027-000067-g35-07-R.json 98 5 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000027-000067-g35-07-T.pkl
sleep 600