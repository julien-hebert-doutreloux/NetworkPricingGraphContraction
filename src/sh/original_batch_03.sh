#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=01:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-06-P.json ./data/generated/problems/paper/original/000000-000000-h35-06-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d45-10-P.json ./data/generated/problems/paper/original/000000-000000-d45-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-01-P.json ./data/generated/problems/paper/original/000000-000000-d40-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/original/000000-000000-g30-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-05-P.json ./data/generated/problems/paper/original/000000-000000-h35-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d50-04-P.json ./data/generated/problems/paper/original/000000-000000-d50-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-04-P.json ./data/generated/problems/paper/original/000000-000000-d30-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-02-P.json ./data/generated/problems/paper/original/000000-000000-v50-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h35-01-P.json ./data/generated/problems/paper/original/000000-000000-h35-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-10-P.json ./data/generated/problems/paper/original/000000-000000-v40-10-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-07-P.json ./data/generated/problems/paper/original/000000-000000-h50-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d40-03-P.json ./data/generated/problems/paper/original/000000-000000-d40-03-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/original/000000-000000-g35-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-09-P.json ./data/generated/problems/paper/original/000000-000000-v45-09-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-04-P.json ./data/generated/problems/paper/original/000000-000000-h40-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/original/000000-000000-g45-04-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h50-05-P.json ./data/generated/problems/paper/original/000000-000000-h50-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-05-P.json ./data/generated/problems/paper/original/000000-000000-d30-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-d30-08-P.json ./data/generated/problems/paper/original/000000-000000-d30-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-h40-02-P.json ./data/generated/problems/paper/original/000000-000000-h40-02-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v45-05-P.json ./data/generated/problems/paper/original/000000-000000-v45-05-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v50-07-P.json ./data/generated/problems/paper/original/000000-000000-v50-07-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/original/000000-000000-g50-08-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-v40-01-P.json ./data/generated/problems/paper/original/000000-000000-v40-01-R.json 200
julia src/julia/script.jl ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/original/000000-000000-g45-02-R.json 200
sleep 600