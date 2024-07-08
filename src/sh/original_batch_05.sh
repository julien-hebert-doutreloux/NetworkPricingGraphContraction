#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=00:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/original/000000-000000-g30-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/original/000000-000000-g45-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/original/000000-000000-g40-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/original/000000-000000-g30-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/original/000000-000000-g30-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/original/000000-000000-g50-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/original/000000-000000-g40-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/original/000000-000000-g35-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/original/000000-000000-g35-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/original/000000-000000-g45-01-R.json 200
sleep 600