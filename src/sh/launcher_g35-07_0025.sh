#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=11:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000064-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000064-000002-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000064-000002-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000032-000050-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000032-000050-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000032-000050-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000002-000053-000015-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000002-000053-000015-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000002-000053-000015-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000003-000095-000006-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000003-000095-000006-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000003-000095-000006-g35-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-07/000001-000061-000002-g35-07-P.pkl ./data/generated/problems/paper/g35-07/000001-000061-000002-g35-07-R.json 100 ./data/generated/problems/paper/original/000000-000000-g35-07-P.json ./data/generated/problems/paper/g35-07/000001-000061-000002-g35-07-T.pkl
sleep 600