#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000018-000005-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000018-000005-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000018-000005-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000003-000102-000016-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000003-000102-000016-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000003-000102-000016-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000026-000005-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000026-000005-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000026-000005-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000017-000005-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000017-000005-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000017-000005-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000003-000093-000018-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000003-000093-000018-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000003-000093-000018-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000002-000054-000035-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000002-000054-000035-g45-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000002-000054-000035-g45-06-T.pkl
sleep 600