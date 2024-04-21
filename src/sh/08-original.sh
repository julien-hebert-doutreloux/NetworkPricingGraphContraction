#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=09:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-01-P.json' './data/generated/problems/paper/original/000000-000000-h50-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-02-P.json' './data/generated/problems/paper/original/000000-000000-h50-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-03-P.json' './data/generated/problems/paper/original/000000-000000-h50-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-04-P.json' './data/generated/problems/paper/original/000000-000000-h50-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-05-P.json' './data/generated/problems/paper/original/000000-000000-h50-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-06-P.json' './data/generated/problems/paper/original/000000-000000-h50-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-07-P.json' './data/generated/problems/paper/original/000000-000000-h50-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-08-P.json' './data/generated/problems/paper/original/000000-000000-h50-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-09-P.json' './data/generated/problems/paper/original/000000-000000-h50-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-h50-10-P.json' './data/generated/problems/paper/original/000000-000000-h50-10-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-01-P.json' './data/generated/problems/paper/original/000000-000000-v30-01-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-02-P.json' './data/generated/problems/paper/original/000000-000000-v30-02-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-03-P.json' './data/generated/problems/paper/original/000000-000000-v30-03-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-04-P.json' './data/generated/problems/paper/original/000000-000000-v30-04-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-05-P.json' './data/generated/problems/paper/original/000000-000000-v30-05-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-06-P.json' './data/generated/problems/paper/original/000000-000000-v30-06-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-07-P.json' './data/generated/problems/paper/original/000000-000000-v30-07-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-08-P.json' './data/generated/problems/paper/original/000000-000000-v30-08-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-09-P.json' './data/generated/problems/paper/original/000000-000000-v30-09-R.json' 1500
julia src/julia/script.jl './data/generated/problems/paper/original/000000-000000-v30-10-P.json' './data/generated/problems/paper/original/000000-000000-v30-10-R.json' 1500
sleep 60
