#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=44:54:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000021-000025-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000021-000025-g45-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000021-000025-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000014-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000014-000014-g45-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000014-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000004-000005-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000004-000005-g45-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000004-000005-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000037-000079-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000037-000079-g45-04-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000037-000079-g45-04-T.pkl
sleep 600