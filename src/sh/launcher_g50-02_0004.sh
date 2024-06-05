#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000082-000051-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000082-000051-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000082-000051-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000003-000067-000021-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000003-000067-000021-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000003-000067-000021-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000002-000043-000042-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000002-000043-000042-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000002-000043-000042-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000088-000050-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000088-000050-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000088-000050-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000062-000050-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000062-000050-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000062-000050-g50-02-T.pkl
sleep 600