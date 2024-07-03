#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000025-000012-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000025-000012-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000025-000012-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000003-000019-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000003-000019-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000003-000019-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000002-000025-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000002-000025-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000002-000025-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000019-000071-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000019-000071-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000019-000071-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000039-000027-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000039-000027-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000039-000027-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000022-000005-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000022-000005-g45-08-R.json 79 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000022-000005-g45-08-T.pkl
sleep 600