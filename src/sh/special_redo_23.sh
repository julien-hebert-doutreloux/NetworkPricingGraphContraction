#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=12G
#SBATCH --time=05:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000085-000021-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000085-000021-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000085-000021-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000064-000021-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000064-000021-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000064-000021-g35-02-T.pkl
sleep 600