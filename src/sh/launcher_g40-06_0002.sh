#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000002-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000002-000007-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000002-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000031-000089-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000031-000089-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000031-000089-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000039-000073-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000039-000073-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000039-000073-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000001-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000001-000007-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000001-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000012-000045-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000012-000045-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000012-000045-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000003-000007-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000003-000007-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000003-000007-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000037-000067-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000037-000067-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000037-000067-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000038-000074-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000038-000074-g40-06-R.json 39 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000038-000074-g40-06-T.pkl
sleep 600