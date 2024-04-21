#!/bin/bash"
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=09:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-01-P.json' './data/generated/problems/paper/original/000000-000000-d40-01-R.json' 1500 
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-02-P.json' './data/generated/problems/paper/original/000000-000000-d40-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-03-P.json' './data/generated/problems/paper/original/000000-000000-d40-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-04-P.json' './data/generated/problems/paper/original/000000-000000-d40-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-05-P.json' './data/generated/problems/paper/original/000000-000000-d40-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-06-P.json' './data/generated/problems/paper/original/000000-000000-d40-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-07-P.json' './data/generated/problems/paper/original/000000-000000-d40-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-08-P.json' './data/generated/problems/paper/original/000000-000000-d40-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-09-P.json' './data/generated/problems/paper/original/000000-000000-d40-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d40-10-P.json' './data/generated/problems/paper/original/000000-000000-d40-10-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-01-P.json' './data/generated/problems/paper/original/000000-000000-d45-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-02-P.json' './data/generated/problems/paper/original/000000-000000-d45-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-03-P.json' './data/generated/problems/paper/original/000000-000000-d45-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-04-P.json' './data/generated/problems/paper/original/000000-000000-d45-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-05-P.json' './data/generated/problems/paper/original/000000-000000-d45-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-06-P.json' './data/generated/problems/paper/original/000000-000000-d45-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-07-P.json' './data/generated/problems/paper/original/000000-000000-d45-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-08-P.json' './data/generated/problems/paper/original/000000-000000-d45-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-09-P.json' './data/generated/problems/paper/original/000000-000000-d45-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d45-10-P.json' './data/generated/problems/paper/original/000000-000000-d45-10-R.json' 1500
sleep 60
