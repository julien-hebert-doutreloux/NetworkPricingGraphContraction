#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000003-000089-000019-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000003-000089-000019-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000003-000089-000019-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000017-000050-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000017-000050-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000017-000050-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000058-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000058-000002-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000058-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000002-000002-000051-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000002-000002-000051-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000002-000002-000051-g35-07-T.pkl
sleep 600