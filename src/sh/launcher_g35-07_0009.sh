#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:47:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000013-000039-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000013-000039-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000013-000039-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000012-000047-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000012-000047-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000012-000047-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000005-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000005-000002-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000005-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000009-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000009-000002-g35-07-R.json 98 1 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000009-000002-g35-07-T.pkl
sleep 600