#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=07:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-04-P.json ./data/generated/problems/paper/original/000000-000000-v35-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-08-P.json ./data/generated/problems/paper/original/000000-000000-d50-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-10-P.json ./data/generated/problems/paper/original/000000-000000-v30-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-02-P.json ./data/generated/problems/paper/original/000000-000000-d35-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-03-P.json ./data/generated/problems/paper/original/000000-000000-d30-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-10-P.json ./data/generated/problems/paper/original/000000-000000-d40-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-07-P.json ./data/generated/problems/paper/original/000000-000000-h45-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-02-P.json ./data/generated/problems/paper/original/000000-000000-v45-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-03-P.json ./data/generated/problems/paper/original/000000-000000-v30-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-09-P.json ./data/generated/problems/paper/original/000000-000000-d40-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-07-P.json ./data/generated/problems/paper/original/000000-000000-v35-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-01-P.json ./data/generated/problems/paper/original/000000-000000-h40-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-03-P.json ./data/generated/problems/paper/original/000000-000000-v50-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-10-P.json ./data/generated/problems/paper/original/000000-000000-h50-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-10-P.json ./data/generated/problems/paper/original/000000-000000-d30-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/original/000000-000000-g30-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/original/000000-000000-g35-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-05-P.json ./data/generated/problems/paper/original/000000-000000-d35-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/original/000000-000000-g35-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-06-P.json ./data/generated/problems/paper/original/000000-000000-d45-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-10-P.json ./data/generated/problems/paper/original/000000-000000-g50-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-01-P.json ./data/generated/problems/paper/original/000000-000000-d50-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-06-P.json ./data/generated/problems/paper/original/000000-000000-h50-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-06-P.json ./data/generated/problems/paper/original/000000-000000-h40-06-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-03-P.json ./data/generated/problems/paper/original/000000-000000-d35-03-R.json 1005
sleep 750