#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=46:45:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000001-000019-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000001-000019-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000001-000019-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000013-000066-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000013-000066-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000013-000066-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000017-000067-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000017-000067-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000017-000067-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000016-000067-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000016-000067-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000016-000067-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000012-000066-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000012-000066-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000012-000066-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000015-000061-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000015-000061-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000015-000061-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000010-000096-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000010-000096-g35-09-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000010-000096-g35-09-T.pkl
sleep 600