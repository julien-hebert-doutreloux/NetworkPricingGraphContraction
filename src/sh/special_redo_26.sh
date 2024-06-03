#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=10:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000003-000061-000022-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000003-000061-000022-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000003-000061-000022-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000003-000078-000022-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000003-000078-000022-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000003-000078-000022-g30-06-T.pkl
sleep 600