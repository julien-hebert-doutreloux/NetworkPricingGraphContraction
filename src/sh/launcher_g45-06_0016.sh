#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=47:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000009-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000009-000003-g45-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000009-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000022-000021-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000022-000021-g45-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000022-000021-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000003-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000003-000003-g45-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000003-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000000-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000000-000003-g45-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000000-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000002-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000002-000003-g45-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000002-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000029-000097-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000029-000097-g45-06-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000029-000097-g45-06-T.pkl
sleep 600