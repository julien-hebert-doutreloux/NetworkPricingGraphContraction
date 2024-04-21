#!/bin/bash"
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=09:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-01-P.json' './data/generated/problems/paper/original/000000-000000-d30-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-02-P.json' './data/generated/problems/paper/original/000000-000000-d30-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-03-P.json' './data/generated/problems/paper/original/000000-000000-d30-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-04-P.json' './data/generated/problems/paper/original/000000-000000-d30-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-05-P.json' './data/generated/problems/paper/original/000000-000000-d30-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-06-P.json' './data/generated/problems/paper/original/000000-000000-d30-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-07-P.json' './data/generated/problems/paper/original/000000-000000-d30-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-08-P.json' './data/generated/problems/paper/original/000000-000000-d30-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-09-P.json' './data/generated/problems/paper/original/000000-000000-d30-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d30-10-P.json' './data/generated/problems/paper/original/000000-000000-d30-10-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-01-P.json' './data/generated/problems/paper/original/000000-000000-d35-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-02-P.json' './data/generated/problems/paper/original/000000-000000-d35-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-03-P.json' './data/generated/problems/paper/original/000000-000000-d35-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-04-P.json' './data/generated/problems/paper/original/000000-000000-d35-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-05-P.json' './data/generated/problems/paper/original/000000-000000-d35-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-06-P.json' './data/generated/problems/paper/original/000000-000000-d35-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-07-P.json' './data/generated/problems/paper/original/000000-000000-d35-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-08-P.json' './data/generated/problems/paper/original/000000-000000-d35-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-09-P.json' './data/generated/problems/paper/original/000000-000000-d35-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-d35-10-P.json' './data/generated/problems/paper/original/000000-000000-d35-10-R.json' 1500
sleep 60
