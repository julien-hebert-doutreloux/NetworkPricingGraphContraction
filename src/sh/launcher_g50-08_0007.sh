#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000028-000083-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000028-000083-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000028-000083-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000013-000031-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000013-000031-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000013-000031-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000024-000072-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000024-000072-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000024-000072-g50-08-T.pkl
sleep 600