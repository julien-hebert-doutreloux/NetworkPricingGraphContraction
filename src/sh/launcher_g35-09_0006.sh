#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000003-000018-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000003-000018-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000003-000018-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000012-000046-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000012-000046-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000012-000046-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000022-000049-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000022-000049-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000022-000049-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000013-000049-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000013-000049-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000013-000049-g35-09-T.pkl
sleep 600