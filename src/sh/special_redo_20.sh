#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=07:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000032-000020-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000032-000020-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000032-000020-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000074-000020-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000074-000020-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000074-000020-g35-02-T.pkl
sleep 600