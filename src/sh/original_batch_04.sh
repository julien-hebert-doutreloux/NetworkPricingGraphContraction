#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=01:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/original/000000-000000-g40-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-06-P.json ./data/generated/problems/paper/original/000000-000000-h30-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/original/000000-000000-g35-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-02-P.json ./data/generated/problems/paper/original/000000-000000-d50-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-02-P.json ./data/generated/problems/paper/original/000000-000000-v30-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-07-P.json ./data/generated/problems/paper/original/000000-000000-h40-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-03-P.json ./data/generated/problems/paper/original/000000-000000-h30-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-05-P.json ./data/generated/problems/paper/original/000000-000000-d45-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-01-P.json ./data/generated/problems/paper/original/000000-000000-v50-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-06-P.json ./data/generated/problems/paper/original/000000-000000-v45-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-08-P.json ./data/generated/problems/paper/original/000000-000000-v30-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/original/000000-000000-g45-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-02-P.json ./data/generated/problems/paper/original/000000-000000-h50-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/original/000000-000000-g40-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-06-P.json ./data/generated/problems/paper/original/000000-000000-d30-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/original/000000-000000-g30-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-02-P.json ./data/generated/problems/paper/original/000000-000000-d40-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-06-P.json ./data/generated/problems/paper/original/000000-000000-h45-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-03-P.json ./data/generated/problems/paper/original/000000-000000-g50-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-07-P.json ./data/generated/problems/paper/original/000000-000000-d30-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-04-P.json ./data/generated/problems/paper/original/000000-000000-h50-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-04-P.json ./data/generated/problems/paper/original/000000-000000-h35-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-04-P.json ./data/generated/problems/paper/original/000000-000000-v30-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-01-P.json ./data/generated/problems/paper/original/000000-000000-h50-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-08-P.json ./data/generated/problems/paper/original/000000-000000-h35-08-R.json 200
sleep 600