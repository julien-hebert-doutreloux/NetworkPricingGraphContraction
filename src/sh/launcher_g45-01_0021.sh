#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000008-000018-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000008-000018-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000008-000018-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000025-000051-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000025-000051-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000025-000051-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000094-000015-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000094-000015-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000094-000015-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000062-000051-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000062-000051-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000062-000051-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000003-000026-000016-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000003-000026-000016-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000003-000026-000016-g45-01-T.pkl
sleep 600