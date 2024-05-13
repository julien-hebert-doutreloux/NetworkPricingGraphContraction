#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=07:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-04-P.json ./data/generated/problems/paper/original/000000-000000-d35-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-09-P.json ./data/generated/problems/paper/original/000000-000000-h50-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/original/000000-000000-g30-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-07-P.json ./data/generated/problems/paper/original/000000-000000-g50-07-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d35-01-P.json ./data/generated/problems/paper/original/000000-000000-d35-01-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-09-P.json ./data/generated/problems/paper/original/000000-000000-v40-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-10-P.json ./data/generated/problems/paper/original/000000-000000-h45-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-09-P.json ./data/generated/problems/paper/original/000000-000000-v50-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g40-03-P.json ./data/generated/problems/paper/original/000000-000000-g40-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-05-P.json ./data/generated/problems/paper/original/000000-000000-d40-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-08-P.json ./data/generated/problems/paper/original/000000-000000-d45-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-04-P.json ./data/generated/problems/paper/original/000000-000000-h45-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h45-09-P.json ./data/generated/problems/paper/original/000000-000000-h45-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-02-P.json ./data/generated/problems/paper/original/000000-000000-d30-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-09-P.json ./data/generated/problems/paper/original/000000-000000-d45-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v30-05-P.json ./data/generated/problems/paper/original/000000-000000-v30-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-04-P.json ./data/generated/problems/paper/original/000000-000000-v40-04-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-09-P.json ./data/generated/problems/paper/original/000000-000000-h35-09-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-02-P.json ./data/generated/problems/paper/original/000000-000000-d45-02-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/original/000000-000000-g35-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-03-P.json ./data/generated/problems/paper/original/000000-000000-h50-03-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h30-05-P.json ./data/generated/problems/paper/original/000000-000000-h30-05-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v35-10-P.json ./data/generated/problems/paper/original/000000-000000-v35-10-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/original/000000-000000-g35-08-R.json 1005
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/original/000000-000000-g45-01-R.json 1005
sleep 750