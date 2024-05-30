#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:02:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000006-000002-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000006-000002-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000006-000002-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000010-000029-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000010-000029-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000010-000029-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000001-000005-000002-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000001-000005-000002-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000001-000005-000002-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000003-000053-000020-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000003-000053-000020-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000003-000053-000020-g50-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-10/000003-000049-000022-g50-10-P.pkl ./data/generated/problems/paper/g50-10/000003-000049-000022-g50-10-R.json 172 ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/g50-10/000003-000049-000022-g50-10-T.pkl
sleep 600