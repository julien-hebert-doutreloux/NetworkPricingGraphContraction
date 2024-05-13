#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=07:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/original/000000-000000-g45-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-08-P.json ./data/generated/problems/paper/original/000000-000000-v40-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-08-P.json ./data/generated/problems/paper/original/000000-000000-h30-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/original/000000-000000-g40-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-04-P.json ./data/generated/problems/paper/original/000000-000000-d45-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-01-P.json ./data/generated/problems/paper/original/000000-000000-d30-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-05-P.json ./data/generated/problems/paper/original/000000-000000-h40-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-01-P.json ./data/generated/problems/paper/original/000000-000000-g50-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-02-P.json ./data/generated/problems/paper/original/000000-000000-v40-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-06-P.json ./data/generated/problems/paper/original/000000-000000-v40-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/original/000000-000000-g35-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-08-P.json ./data/generated/problems/paper/original/000000-000000-g40-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-05-P.json ./data/generated/problems/paper/original/000000-000000-v40-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-10-P.json ./data/generated/problems/paper/original/000000-000000-d50-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-08-P.json ./data/generated/problems/paper/original/000000-000000-d35-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/original/000000-000000-g30-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-02-P.json ./data/generated/problems/paper/original/000000-000000-h35-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/original/000000-000000-g45-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-04-P.json ./data/generated/problems/paper/original/000000-000000-h30-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-06-P.json ./data/generated/problems/paper/original/000000-000000-v30-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/original/000000-000000-g35-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/original/000000-000000-g40-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-04-P.json ./data/generated/problems/paper/original/000000-000000-v45-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-02-P.json ./data/generated/problems/paper/original/000000-000000-v35-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-06-P.json ./data/generated/problems/paper/original/000000-000000-d35-06-R.json 1005
sleep 750