#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000031-000001-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000031-000001-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000031-000001-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000067-000050-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000067-000050-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000067-000050-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000003-000054-000019-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000003-000054-000019-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000003-000054-000019-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000093-000019-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000093-000019-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000093-000019-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000002-000005-000037-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000002-000005-000037-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000002-000005-000037-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000003-000051-000019-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000003-000051-000019-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000003-000051-000019-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000002-000001-000050-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000002-000001-000050-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000002-000001-000050-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000087-000002-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000087-000002-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000087-000002-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000055-000050-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000055-000050-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000055-000050-g45-05-T.pkl
sleep 600