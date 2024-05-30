#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000033-000013-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000033-000013-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000033-000013-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000012-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000012-000003-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000012-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000027-000020-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000027-000020-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000027-000020-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000030-000019-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000030-000019-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000030-000019-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000082-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000082-000003-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000082-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000015-000050-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000015-000050-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000015-000050-g45-07-T.pkl
sleep 600