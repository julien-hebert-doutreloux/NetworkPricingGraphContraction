#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000002-000009-000051-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000002-000009-000051-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000002-000009-000051-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000039-000001-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000039-000001-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000039-000001-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000040-000050-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000040-000050-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000040-000050-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000080-000002-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000080-000002-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000080-000002-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000063-000050-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000063-000050-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000063-000050-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000001-000002-000050-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000001-000002-000050-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000001-000002-000050-g45-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-05/000002-000072-000013-g45-05-P.pkl ./data/generated/problems/paper/g45-05/000002-000072-000013-g45-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/g45-05/000002-000072-000013-g45-05-T.pkl
sleep 600