#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=41:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000012-000033-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000012-000033-g40-10-R.json 139 4 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000012-000033-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000003-000001-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000003-000001-g40-10-R.json 139 4 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000003-000001-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000004-000002-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000004-000002-g40-10-R.json 139 4 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000004-000002-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000015-000022-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000015-000022-g40-10-R.json 139 4 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000015-000022-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000008-000002-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000008-000002-g40-10-R.json 139 4 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000008-000002-g40-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-10/000001-000020-000099-g40-10-P.pkl ./data/generated/problems/paper/g40-10/000001-000020-000099-g40-10-R.json 139 4 ./data/generated/problems/paper/original/000000-000000-g40-10-P.json ./data/generated/problems/paper/g40-10/000001-000020-000099-g40-10-T.pkl
sleep 600