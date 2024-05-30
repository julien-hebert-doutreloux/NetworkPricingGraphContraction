#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000087-000015-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000087-000015-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000087-000015-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000088-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000088-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000088-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000000-000001-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000000-000001-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000000-000001-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000095-000051-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000095-000051-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000095-000051-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000036-000036-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000036-000036-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000036-000036-g35-01-T.pkl
sleep 600