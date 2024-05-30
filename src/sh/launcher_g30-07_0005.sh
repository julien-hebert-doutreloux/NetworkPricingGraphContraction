#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000066-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000066-000002-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000066-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000093-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000093-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000093-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000078-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000078-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000078-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000073-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000073-000002-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000073-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000063-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000063-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000063-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000060-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000060-000002-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000060-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000055-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000055-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000055-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000046-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000046-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000046-000051-g30-07-T.pkl
sleep 600