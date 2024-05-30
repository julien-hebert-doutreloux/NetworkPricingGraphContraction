#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000003-000049-000015-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000003-000049-000015-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000003-000049-000015-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000003-000035-000020-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000003-000035-000020-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000003-000035-000020-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000087-000050-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000087-000050-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000087-000050-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000003-000054-000021-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000003-000054-000021-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000003-000054-000021-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000082-000023-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000082-000023-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000082-000023-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000061-000005-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000061-000005-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000061-000005-g45-01-T.pkl
sleep 600