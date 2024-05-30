#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000004-000010-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000004-000010-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000004-000010-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000036-000050-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000036-000050-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000036-000050-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000028-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000028-000007-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000028-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000056-000051-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000056-000051-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000056-000051-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000001-000051-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000001-000051-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000001-000051-g30-06-T.pkl
sleep 600