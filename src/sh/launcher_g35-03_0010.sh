#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=40:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000016-000014-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000016-000014-g35-03-R.json 124 5 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000016-000014-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000022-000026-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000022-000026-g35-03-R.json 124 5 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000022-000026-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000027-000059-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000027-000059-g35-03-R.json 124 5 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000027-000059-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000033-000071-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000033-000071-g35-03-R.json 124 5 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000033-000071-g35-03-T.pkl
sleep 600