#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000014-000048-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000014-000048-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000014-000048-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000025-000038-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000025-000038-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000025-000038-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000008-000044-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000008-000044-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000008-000044-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000017-000049-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000017-000049-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000017-000049-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000004-000024-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000004-000024-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000004-000024-g30-09-T.pkl
sleep 600