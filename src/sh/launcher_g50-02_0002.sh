#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=34:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000024-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000024-000002-g50-02-R.json 200 3 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000024-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000027-000002-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000027-000002-g50-02-R.json 200 3 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000027-000002-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000001-000011-000091-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000001-000011-000091-g50-02-R.json 200 3 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000001-000011-000091-g50-02-T.pkl
sleep 600