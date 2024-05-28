#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=11:09:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000016-000048-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000016-000048-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000016-000048-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000018-000048-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000018-000048-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000018-000048-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000005-000041-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000005-000041-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000005-000041-g35-09-T.pkl
sleep 600