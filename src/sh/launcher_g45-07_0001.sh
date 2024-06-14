#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=22:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000045-000050-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000045-000050-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000045-000050-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000084-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000084-000003-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000084-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000002-000054-000051-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000002-000054-000051-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000002-000054-000051-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000051-000018-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000051-000018-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000051-000018-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000002-000041-000051-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000002-000041-000051-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000002-000041-000051-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000005-000037-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000005-000037-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000005-000037-g45-07-T.pkl
sleep 600