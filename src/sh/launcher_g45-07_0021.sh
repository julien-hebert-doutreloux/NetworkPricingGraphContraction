#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000017-000050-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000017-000050-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000017-000050-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000060-000022-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000060-000022-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000060-000022-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000021-000001-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000021-000001-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000021-000001-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000044-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000044-000003-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000044-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000055-000023-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000055-000023-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000055-000023-g45-07-T.pkl
sleep 600