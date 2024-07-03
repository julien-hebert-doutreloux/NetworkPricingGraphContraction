#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=40:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000012-000014-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000012-000014-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000012-000014-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000004-000005-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000004-000005-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000004-000005-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000037-000075-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000037-000075-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000037-000075-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000018-000013-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000018-000013-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000018-000013-g35-03-T.pkl
sleep 600