#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=07:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-10-P.json ./data/generated/problems/paper/original/000000-000000-d35-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/original/000000-000000-g30-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-07-P.json ./data/generated/problems/paper/original/000000-000000-v30-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-03-P.json ./data/generated/problems/paper/original/000000-000000-h40-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/original/000000-000000-g40-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-06-P.json ./data/generated/problems/paper/original/000000-000000-v35-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/original/000000-000000-g30-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-03-P.json ./data/generated/problems/paper/original/000000-000000-h45-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-01-P.json ./data/generated/problems/paper/original/000000-000000-v30-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-09-P.json ./data/generated/problems/paper/original/000000-000000-h40-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-06-P.json ./data/generated/problems/paper/original/000000-000000-v50-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-05-P.json ./data/generated/problems/paper/original/000000-000000-v35-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-08-P.json ./data/generated/problems/paper/original/000000-000000-h45-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-09-P.json ./data/generated/problems/paper/original/000000-000000-v30-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-07-P.json ./data/generated/problems/paper/original/000000-000000-h30-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-10-P.json ./data/generated/problems/paper/original/000000-000000-v50-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-04-P.json ./data/generated/problems/paper/original/000000-000000-v50-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-10-P.json ./data/generated/problems/paper/original/000000-000000-h30-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-04-P.json ./data/generated/problems/paper/original/000000-000000-d40-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-07-P.json ./data/generated/problems/paper/original/000000-000000-d50-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-03-P.json ./data/generated/problems/paper/original/000000-000000-v35-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-07-P.json ./data/generated/problems/paper/original/000000-000000-h35-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-03-P.json ./data/generated/problems/paper/original/000000-000000-v45-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-03-P.json ./data/generated/problems/paper/original/000000-000000-d45-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-01-P.json ./data/generated/problems/paper/original/000000-000000-h30-01-R.json 1005
sleep 750