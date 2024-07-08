#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=00:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/original/000000-000000-g50-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/original/000000-000000-g30-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/original/000000-000000-g40-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/original/000000-000000-g30-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/original/000000-000000-g30-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/original/000000-000000-g35-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/original/000000-000000-g35-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/original/000000-000000-g50-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/original/000000-000000-g45-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/original/000000-000000-g40-09-R.json 200
sleep 600