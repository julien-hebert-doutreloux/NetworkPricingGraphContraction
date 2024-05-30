#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000002-000084-000047-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000002-000084-000047-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000002-000084-000047-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000002-000090-000016-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000002-000090-000016-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000002-000090-000016-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000009-000025-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000009-000025-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000009-000025-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000029-000050-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000029-000050-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000029-000050-g50-04-T.pkl
sleep 600