#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000023-000015-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000023-000015-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000023-000015-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000000-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000000-000005-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000000-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000005-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000005-000014-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000005-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000014-000037-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000014-000037-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000014-000037-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000013-000031-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000013-000031-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000013-000031-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000030-000084-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000030-000084-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000030-000084-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000003-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000003-000005-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000003-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000028-000092-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000028-000092-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000028-000092-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000035-000059-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000035-000059-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000035-000059-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000019-000031-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000019-000031-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000019-000031-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000025-000067-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000025-000067-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000025-000067-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000007-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000007-000014-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000007-000014-g40-05-T.pkl
sleep 600