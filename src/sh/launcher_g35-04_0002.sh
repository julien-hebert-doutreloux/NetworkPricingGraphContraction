#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000029-000074-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000029-000074-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000029-000074-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000025-000067-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000025-000067-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000025-000067-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000006-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000006-000002-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000006-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000004-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000004-000002-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000004-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000031-000078-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000031-000078-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000031-000078-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000019-000070-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000019-000070-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000019-000070-g35-04-T.pkl
sleep 600