#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=23:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000018-000076-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000018-000076-g30-08-R.json 30 2 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000018-000076-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000015-000063-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000015-000063-g30-08-R.json 30 2 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000015-000063-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000006-000070-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000006-000070-g30-08-R.json 30 2 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000006-000070-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000014-000059-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000014-000059-g30-08-R.json 30 2 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000014-000059-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000000-000027-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000000-000027-g30-08-R.json 30 2 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000000-000027-g30-08-T.pkl
sleep 600