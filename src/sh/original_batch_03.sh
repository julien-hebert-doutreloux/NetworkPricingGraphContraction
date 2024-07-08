#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=00:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/original/000000-000000-g30-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/original/000000-000000-g35-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/original/000000-000000-g45-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/original/000000-000000-g50-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/original/000000-000000-g45-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/original/000000-000000-g40-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/original/000000-000000-g35-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/original/000000-000000-g45-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/original/000000-000000-g40-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/original/000000-000000-g30-09-R.json 200
sleep 600