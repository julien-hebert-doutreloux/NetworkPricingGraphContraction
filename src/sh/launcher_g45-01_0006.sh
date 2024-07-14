#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000037-000069-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000037-000069-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000037-000069-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000006-000005-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000006-000005-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000006-000005-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000022-000018-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000022-000018-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000022-000018-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000019-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000019-000014-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000019-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000023-000018-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000023-000018-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000023-000018-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000025-000079-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000025-000079-g45-01-R.json 64 2 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000025-000079-g45-01-T.pkl
sleep 600