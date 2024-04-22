#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=5G
#SBATCH --time=03:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-09-P.json' './data/generated/problems/paper/original/000000-000000-g35-09-R.json' 275
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g35-10-P.json' './data/generated/problems/paper/original/000000-000000-g35-10-R.json' 302
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-01-P.json' './data/generated/problems/paper/original/000000-000000-g40-01-R.json' 262
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-02-P.json' './data/generated/problems/paper/original/000000-000000-g40-02-R.json' 268
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-03-P.json' './data/generated/problems/paper/original/000000-000000-g40-03-R.json' 374
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-04-P.json' './data/generated/problems/paper/original/000000-000000-g40-04-R.json' 286
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-05-P.json' './data/generated/problems/paper/original/000000-000000-g40-05-R.json' 262
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-06-P.json' './data/generated/problems/paper/original/000000-000000-g40-06-R.json' 288
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-07-P.json' './data/generated/problems/paper/original/000000-000000-g40-07-R.json' 356
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-09-P.json' './data/generated/problems/paper/original/000000-000000-g40-09-R.json' 291
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g40-10-P.json' './data/generated/problems/paper/original/000000-000000-g40-10-R.json' 375
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-01-P.json' './data/generated/problems/paper/original/000000-000000-g45-01-R.json' 309
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-02-P.json' './data/generated/problems/paper/original/000000-000000-g45-02-R.json' 512
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-04-P.json' './data/generated/problems/paper/original/000000-000000-g45-04-R.json' 1370
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-06-P.json' './data/generated/problems/paper/original/000000-000000-g45-06-R.json' 811
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-07-P.json' './data/generated/problems/paper/original/000000-000000-g45-07-R.json' 345
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-08-P.json' './data/generated/problems/paper/original/000000-000000-g45-08-R.json' 324
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g45-10-P.json' './data/generated/problems/paper/original/000000-000000-g45-10-R.json' 385
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-01-P.json' './data/generated/problems/paper/original/000000-000000-g50-01-R.json' 972
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-02-P.json' './data/generated/problems/paper/original/000000-000000-g50-02-R.json' 1072
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-03-P.json' './data/generated/problems/paper/original/000000-000000-g50-03-R.json' 436
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-04-P.json' './data/generated/problems/paper/original/000000-000000-g50-04-R.json' 322
julia ./src/julia/script.jl './data/generated/problems/paper/original/000000-000000-g50-05-P.json' './data/generated/problems/paper/original/000000-000000-g50-05-R.json' 1363
sleep 60