#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=14:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-02/000003-000087-000022-g50-02-P.pkl ./data/generated/problems/paper/g50-02/000003-000087-000022-g50-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-02-P.json ./data/generated/problems/paper/g50-02/000003-000087-000022-g50-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000003-000052-000023-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000003-000052-000023-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000003-000052-000023-g30-04-T.pkl
sleep 600