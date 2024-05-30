#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000011-000040-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000011-000040-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000011-000040-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000012-000042-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000012-000042-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000012-000042-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000049-000018-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000049-000018-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000049-000018-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000002-000045-000051-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000002-000045-000051-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000002-000045-000051-g50-04-T.pkl
sleep 600