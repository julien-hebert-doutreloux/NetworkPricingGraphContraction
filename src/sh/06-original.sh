#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=09:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-01-P.json' './data/generated/problems/paper/original/000000-000000-h30-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-02-P.json' './data/generated/problems/paper/original/000000-000000-h30-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-03-P.json' './data/generated/problems/paper/original/000000-000000-h30-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-04-P.json' './data/generated/problems/paper/original/000000-000000-h30-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-05-P.json' './data/generated/problems/paper/original/000000-000000-h30-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-06-P.json' './data/generated/problems/paper/original/000000-000000-h30-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-07-P.json' './data/generated/problems/paper/original/000000-000000-h30-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-08-P.json' './data/generated/problems/paper/original/000000-000000-h30-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-09-P.json' './data/generated/problems/paper/original/000000-000000-h30-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h30-10-P.json' './data/generated/problems/paper/original/000000-000000-h30-10-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-01-P.json' './data/generated/problems/paper/original/000000-000000-h35-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-02-P.json' './data/generated/problems/paper/original/000000-000000-h35-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-03-P.json' './data/generated/problems/paper/original/000000-000000-h35-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-04-P.json' './data/generated/problems/paper/original/000000-000000-h35-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-05-P.json' './data/generated/problems/paper/original/000000-000000-h35-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-06-P.json' './data/generated/problems/paper/original/000000-000000-h35-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-07-P.json' './data/generated/problems/paper/original/000000-000000-h35-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-08-P.json' './data/generated/problems/paper/original/000000-000000-h35-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-09-P.json' './data/generated/problems/paper/original/000000-000000-h35-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h35-10-P.json' './data/generated/problems/paper/original/000000-000000-h35-10-R.json' 1500
sleep 60
