#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=39:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000009-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000009-000003-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000009-000003-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000021-000020-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000021-000020-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000021-000020-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000016-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000016-000014-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000016-000014-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000036-000070-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000036-000070-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000036-000070-g30-02-T.pkl
sleep 600