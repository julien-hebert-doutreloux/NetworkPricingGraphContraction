#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000003-000072-000021-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000003-000072-000021-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000003-000072-000021-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000003-000043-000021-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000003-000043-000021-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000003-000043-000021-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000003-000062-000022-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000003-000062-000022-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000003-000062-000022-g50-10-T.pkl
sleep 600