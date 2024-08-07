#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=42:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000026-000059-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000026-000059-g50-10-R.json 162 5 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000026-000059-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000008-000002-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000008-000002-g50-10-R.json 162 5 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000008-000002-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000011-000002-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000011-000002-g50-10-R.json 162 5 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000011-000002-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000010-000002-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000010-000002-g50-10-R.json 162 5 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000010-000002-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000002-000001-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000002-000001-g50-10-R.json 162 5 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000002-000001-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000024-000073-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000024-000073-g50-10-R.json 162 5 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000024-000073-g50-10-T.pkl
sleep 600