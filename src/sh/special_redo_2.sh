#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=06:03:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000069-000003-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000069-000003-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000069-000003-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000058-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000058-000003-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000058-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000064-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000064-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000064-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000074-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000074-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000074-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000027-000003-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000027-000003-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000027-000003-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-P.pkl ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/g40-08/000001-000069-000003-g40-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000003-000100-000003-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000003-000100-000003-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000003-000100-000003-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-01/000001-000060-000003-g50-01-P.pkl ./data/generated/problems/paper/g50-01/000001-000060-000003-g50-01-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/g50-01/000001-000060-000003-g50-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-06/000003-000022-000003-g50-06-P.pkl ./data/generated/problems/paper/g50-06/000003-000022-000003-g50-06-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/g50-06/000003-000022-000003-g50-06-T.pkl
sleep 600