#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=14:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000005-000005-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000005-000005-g30-02-R.json 232 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000005-000005-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000016-000022-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000016-000022-g30-02-R.json 232 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000016-000022-g30-02-T.pkl
sleep 600