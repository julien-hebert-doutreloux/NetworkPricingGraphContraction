#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=45:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000011-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000011-000002-g45-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000011-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000004-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000004-000002-g45-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000004-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000009-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000009-000002-g45-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000009-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000025-000057-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000025-000057-g45-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000025-000057-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000029-000061-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000029-000061-g45-09-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000029-000061-g45-09-T.pkl
sleep 600