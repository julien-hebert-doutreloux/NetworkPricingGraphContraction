#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=45:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000005-000005-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000005-000005-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000005-000005-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000018-000014-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000018-000014-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000018-000014-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000006-000005-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000006-000005-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000006-000005-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000011-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000011-000003-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000011-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000001-000003-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000001-000003-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000001-000003-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000016-000014-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000016-000014-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000016-000014-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000013-000014-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000013-000014-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000013-000014-g45-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-06/000001-000033-000065-g45-06-P.pkl ./data/generated/problems/paper/g45-06/000001-000033-000065-g45-06-R.json 200 1 ./data/generated/problems/paper/original/000000-000000-g45-06-P.json ./data/generated/problems/paper/g45-06/000001-000033-000065-g45-06-T.pkl
sleep 600