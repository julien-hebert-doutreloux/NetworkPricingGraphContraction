#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:41:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000025-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000025-000002-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000025-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000011-000094-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000011-000094-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000011-000094-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000009-000096-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000009-000096-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000009-000096-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000020-000001-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000020-000001-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000020-000001-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000023-000001-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000023-000001-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000023-000001-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000003-000021-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000003-000021-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000003-000021-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000008-000098-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000008-000098-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000008-000098-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000007-000075-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000007-000075-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000007-000075-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000000-000036-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000000-000036-g35-05-R.json 19 4 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000000-000036-g35-05-T.pkl
sleep 600