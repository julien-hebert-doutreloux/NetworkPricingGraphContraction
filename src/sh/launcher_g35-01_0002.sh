#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000022-000096-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000022-000096-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000022-000096-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000005-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000005-000002-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000005-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000013-000025-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000013-000025-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000013-000025-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000017-000079-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000017-000079-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000017-000079-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000031-000071-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000031-000071-g35-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000031-000071-g35-01-T.pkl
sleep 600