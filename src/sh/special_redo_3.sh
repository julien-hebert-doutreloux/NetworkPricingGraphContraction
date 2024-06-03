#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=07:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000087-000004-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000087-000004-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000087-000004-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-04/000003-000055-000004-g50-04-P.pkl ./data/generated/problems/paper/g50-04/000003-000055-000004-g50-04-R.json 88 ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/g50-04/000003-000055-000004-g50-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000002-000091-000004-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000002-000091-000004-g50-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000002-000091-000004-g50-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000068-000005-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000068-000005-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000068-000005-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000044-000005-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000044-000005-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000044-000005-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000082-000005-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000082-000005-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000082-000005-g35-08-T.pkl
sleep 600