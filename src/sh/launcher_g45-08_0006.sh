#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000022-000005-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000022-000005-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000022-000005-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000018-000077-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000018-000077-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000018-000077-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000031-000011-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000031-000011-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000031-000011-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000008-000096-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000008-000096-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000008-000096-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000027-000012-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000027-000012-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000027-000012-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000009-000097-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000009-000097-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000009-000097-g45-08-T.pkl
sleep 600