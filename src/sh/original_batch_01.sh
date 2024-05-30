#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=01:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-05-P.json ./data/generated/problems/paper/original/000000-000000-d50-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-09-P.json ./data/generated/problems/paper/original/000000-000000-d30-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-08-P.json ./data/generated/problems/paper/original/000000-000000-v50-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-07-P.json ./data/generated/problems/paper/original/000000-000000-d45-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-03-P.json ./data/generated/problems/paper/original/000000-000000-h35-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-04-P.json ./data/generated/problems/paper/original/000000-000000-g50-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-09-P.json ./data/generated/problems/paper/original/000000-000000-v35-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-02-P.json ./data/generated/problems/paper/original/000000-000000-h45-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-05-P.json ./data/generated/problems/paper/original/000000-000000-h45-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-02-P.json ./data/generated/problems/paper/original/000000-000000-h30-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-05-P.json ./data/generated/problems/paper/original/000000-000000-g45-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/original/000000-000000-g50-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-09-P.json ./data/generated/problems/paper/original/000000-000000-g50-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-08-P.json ./data/generated/problems/paper/original/000000-000000-v35-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/original/000000-000000-g35-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/original/000000-000000-g35-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/original/000000-000000-g30-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-09-P.json ./data/generated/problems/paper/original/000000-000000-d50-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-07-P.json ./data/generated/problems/paper/original/000000-000000-v45-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/original/000000-000000-g40-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/original/000000-000000-g50-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-06-P.json ./data/generated/problems/paper/original/000000-000000-g50-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/original/000000-000000-g45-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-08-P.json ./data/generated/problems/paper/original/000000-000000-v45-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-08-P.json ./data/generated/problems/paper/original/000000-000000-d40-08-R.json 200
sleep 600