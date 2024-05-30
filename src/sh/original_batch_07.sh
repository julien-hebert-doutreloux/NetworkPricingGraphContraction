#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=01:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-10-P.json ./data/generated/problems/paper/original/000000-000000-g45-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-10-P.json ./data/generated/problems/paper/original/000000-000000-h40-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-07-P.json ./data/generated/problems/paper/original/000000-000000-d35-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/original/000000-000000-g40-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/original/000000-000000-g30-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-06-P.json ./data/generated/problems/paper/original/000000-000000-d40-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-01-P.json ./data/generated/problems/paper/original/000000-000000-v45-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-10-P.json ./data/generated/problems/paper/original/000000-000000-h35-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-07-P.json ./data/generated/problems/paper/original/000000-000000-v40-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-01-P.json ./data/generated/problems/paper/original/000000-000000-h45-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/original/000000-000000-g45-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/original/000000-000000-g40-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-03-P.json ./data/generated/problems/paper/original/000000-000000-v40-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-07-P.json ./data/generated/problems/paper/original/000000-000000-d40-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-08-P.json ./data/generated/problems/paper/original/000000-000000-h40-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-05-P.json ./data/generated/problems/paper/original/000000-000000-v50-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/original/000000-000000-g30-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-01-P.json ./data/generated/problems/paper/original/000000-000000-v35-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-09-P.json ./data/generated/problems/paper/original/000000-000000-h30-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-01-P.json ./data/generated/problems/paper/original/000000-000000-d45-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-08-P.json ./data/generated/problems/paper/original/000000-000000-h50-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-03-P.json ./data/generated/problems/paper/original/000000-000000-d50-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-09-P.json ./data/generated/problems/paper/original/000000-000000-d35-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-06-P.json ./data/generated/problems/paper/original/000000-000000-d50-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-10-P.json ./data/generated/problems/paper/original/000000-000000-v45-10-R.json 200
sleep 600