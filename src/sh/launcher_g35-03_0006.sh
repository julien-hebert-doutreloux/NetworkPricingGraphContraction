#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=19:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000003-000020-000002-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000003-000020-000002-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000003-000020-000002-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000003-000012-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000003-000012-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000003-000012-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000105-000013-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000105-000013-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000105-000013-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000067-000005-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000067-000005-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000067-000005-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000002-000096-000014-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000002-000096-000014-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000002-000096-000014-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000012-000050-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000012-000050-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000012-000050-g35-03-T.pkl
sleep 600