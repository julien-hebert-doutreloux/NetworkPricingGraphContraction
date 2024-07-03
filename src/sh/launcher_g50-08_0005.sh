#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000020-000098-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000020-000098-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000020-000098-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000017-000086-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000017-000086-g50-08-R.json 121 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000017-000086-g50-08-T.pkl
sleep 600