#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000037-000027-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000037-000027-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000037-000027-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000003-000026-000022-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000003-000026-000022-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000003-000026-000022-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000046-000050-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000046-000050-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000046-000050-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000003-000066-000010-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000003-000066-000010-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000003-000066-000010-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000055-000050-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000055-000050-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000055-000050-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000001-000067-000050-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000001-000067-000050-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000001-000067-000050-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000004-000051-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000004-000051-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000004-000051-g45-02-T.pkl
sleep 600