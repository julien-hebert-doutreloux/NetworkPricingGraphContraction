#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=06:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000002-000109-000005-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000002-000109-000005-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000002-000109-000005-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000001-000061-000005-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000001-000061-000005-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000001-000061-000005-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000003-000019-000006-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000003-000019-000006-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000003-000019-000006-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000022-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000022-000007-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000022-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000029-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000029-000007-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000029-000007-g30-06-T.pkl
sleep 600