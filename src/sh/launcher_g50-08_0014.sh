#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000037-000001-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000037-000001-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000037-000001-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000003-000033-000022-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000003-000033-000022-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000003-000033-000022-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000002-000079-000003-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000002-000079-000003-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000002-000079-000003-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000003-000018-000007-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000003-000018-000007-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000003-000018-000007-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000082-000050-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000082-000050-g50-08-R.json 126 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000082-000050-g50-08-T.pkl
sleep 600