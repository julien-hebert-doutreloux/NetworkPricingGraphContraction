#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=09:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-01-P.json' './data/generated/problems/paper/original/000000-000000-g45-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-02-P.json' './data/generated/problems/paper/original/000000-000000-g45-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-03-P.json' './data/generated/problems/paper/original/000000-000000-g45-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-04-P.json' './data/generated/problems/paper/original/000000-000000-g45-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-05-P.json' './data/generated/problems/paper/original/000000-000000-g45-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-06-P.json' './data/generated/problems/paper/original/000000-000000-g45-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-07-P.json' './data/generated/problems/paper/original/000000-000000-g45-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-08-P.json' './data/generated/problems/paper/original/000000-000000-g45-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-09-P.json' './data/generated/problems/paper/original/000000-000000-g45-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-10-P.json' './data/generated/problems/paper/original/000000-000000-g45-10-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-01-P.json' './data/generated/problems/paper/original/000000-000000-g50-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-02-P.json' './data/generated/problems/paper/original/000000-000000-g50-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-03-P.json' './data/generated/problems/paper/original/000000-000000-g50-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-04-P.json' './data/generated/problems/paper/original/000000-000000-g50-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-05-P.json' './data/generated/problems/paper/original/000000-000000-g50-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-06-P.json' './data/generated/problems/paper/original/000000-000000-g50-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-07-P.json' './data/generated/problems/paper/original/000000-000000-g50-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-08-P.json' './data/generated/problems/paper/original/000000-000000-g50-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-09-P.json' './data/generated/problems/paper/original/000000-000000-g50-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-10-P.json' './data/generated/problems/paper/original/000000-000000-g50-10-R.json' 1500
sleep 60
