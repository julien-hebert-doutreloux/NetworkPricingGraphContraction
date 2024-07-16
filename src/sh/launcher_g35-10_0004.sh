#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000031-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000031-000002-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000031-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000014-000052-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000014-000052-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000014-000052-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000020-000001-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000020-000001-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000020-000001-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000012-000070-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000012-000070-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000012-000070-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000001-000016-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000001-000016-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000001-000016-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000017-000071-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000017-000071-g35-10-R.json 54 5 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000017-000071-g35-10-T.pkl
sleep 600