#!/bin/bash",
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=09:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-01-P.json' './data/generated/problems/paper/original/000000-000000-g35-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-02-P.json' './data/generated/problems/paper/original/000000-000000-g35-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-03-P.json' './data/generated/problems/paper/original/000000-000000-g35-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-04-P.json' './data/generated/problems/paper/original/000000-000000-g35-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-05-P.json' './data/generated/problems/paper/original/000000-000000-g35-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-06-P.json' './data/generated/problems/paper/original/000000-000000-g35-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-07-P.json' './data/generated/problems/paper/original/000000-000000-g35-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-08-P.json' './data/generated/problems/paper/original/000000-000000-g35-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-09-P.json' './data/generated/problems/paper/original/000000-000000-g35-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-10-P.json' './data/generated/problems/paper/original/000000-000000-g35-10-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-01-P.json' './data/generated/problems/paper/original/000000-000000-g40-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-02-P.json' './data/generated/problems/paper/original/000000-000000-g40-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-03-P.json' './data/generated/problems/paper/original/000000-000000-g40-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-04-P.json' './data/generated/problems/paper/original/000000-000000-g40-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-05-P.json' './data/generated/problems/paper/original/000000-000000-g40-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-06-P.json' './data/generated/problems/paper/original/000000-000000-g40-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-07-P.json' './data/generated/problems/paper/original/000000-000000-g40-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-08-P.json' './data/generated/problems/paper/original/000000-000000-g40-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-09-P.json' './data/generated/problems/paper/original/000000-000000-g40-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-10-P.json' './data/generated/problems/paper/original/000000-000000-g40-10-R.json' 1500
sleep 60