#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=40:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000015-000019-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000015-000019-g35-07-R.json 98 2 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000015-000019-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000010-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000010-000002-g35-07-R.json 98 2 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000010-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000002-000001-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000002-000001-g35-07-R.json 98 2 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000002-000001-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000022-000095-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000022-000095-g35-07-R.json 98 2 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000022-000095-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000016-000094-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000016-000094-g35-07-R.json 98 2 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000016-000094-g35-07-T.pkl
sleep 600