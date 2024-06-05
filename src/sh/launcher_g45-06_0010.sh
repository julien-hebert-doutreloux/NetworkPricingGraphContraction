#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000060-000023-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000060-000023-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000060-000023-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000077-000021-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000077-000021-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000077-000021-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000015-000051-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000015-000051-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000015-000051-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000037-000051-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000037-000051-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000037-000051-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000070-000014-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000070-000014-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000070-000014-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000094-000050-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000094-000050-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000094-000050-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000004-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000004-000003-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000004-000003-g45-06-T.pkl
sleep 600