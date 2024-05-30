#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000004-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000004-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000004-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000017-000015-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000017-000015-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000017-000015-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000016-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000016-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000016-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000046-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000046-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000046-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000003-000020-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000003-000020-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000003-000020-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000001-000040-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000001-000040-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000001-000040-g35-10-T.pkl
sleep 600