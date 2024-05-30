#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000009-000002-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000009-000002-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000009-000002-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000002-000042-000051-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000002-000042-000051-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000002-000042-000051-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000002-000052-000051-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000002-000052-000051-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000002-000052-000051-g50-10-T.pkl
sleep 600