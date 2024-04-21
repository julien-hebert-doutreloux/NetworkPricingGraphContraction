#!/bin/bash",
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=09:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-01-P.json' './data/generated/problems/paper/000000-000000-v45-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-02-P.json' './data/generated/problems/paper/000000-000000-v45-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-03-P.json' './data/generated/problems/paper/000000-000000-v45-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-04-P.json' './data/generated/problems/paper/000000-000000-v45-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-05-P.json' './data/generated/problems/paper/000000-000000-v45-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-06-P.json' './data/generated/problems/paper/000000-000000-v45-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-07-P.json' './data/generated/problems/paper/000000-000000-v45-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-08-P.json' './data/generated/problems/paper/000000-000000-v45-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-09-P.json' './data/generated/problems/paper/000000-000000-v45-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v45-10-P.json' './data/generated/problems/paper/000000-000000-v45-10-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-01-P.json' './data/generated/problems/paper/000000-000000-v50-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-02-P.json' './data/generated/problems/paper/000000-000000-v50-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-03-P.json' './data/generated/problems/paper/000000-000000-v50-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-04-P.json' './data/generated/problems/paper/000000-000000-v50-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-05-P.json' './data/generated/problems/paper/000000-000000-v50-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-06-P.json' './data/generated/problems/paper/000000-000000-v50-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-07-P.json' './data/generated/problems/paper/000000-000000-v50-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-08-P.json' './data/generated/problems/paper/000000-000000-v50-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-09-P.json' './data/generated/problems/paper/000000-000000-v50-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/000000-000000-v50-10-P.json' './data/generated/problems/paper/000000-000000-v50-10-R.json' 1500
sleep 60
