#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000000-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000000-000001-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000000-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000017-000079-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000017-000079-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000017-000079-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000004-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000004-000002-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000004-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000012-000025-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000012-000025-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000012-000025-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000031-000065-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000031-000065-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000031-000065-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000014-000023-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000014-000023-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000014-000023-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000005-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000005-000002-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000005-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000030-000067-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000030-000067-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000030-000067-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000022-000095-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000022-000095-g35-02-R.json 24 5 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000022-000095-g35-02-T.pkl
sleep 600