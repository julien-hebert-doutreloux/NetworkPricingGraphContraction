#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=36:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000011-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000011-000002-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000011-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000016-000088-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000016-000088-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000016-000088-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000018-000084-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000018-000084-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000018-000084-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000000-000001-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000000-000001-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000000-000001-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000020-000096-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000020-000096-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000020-000096-g35-04-T.pkl
sleep 600