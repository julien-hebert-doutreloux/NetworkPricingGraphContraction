#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000002-000077-000051-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000002-000077-000051-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000002-000077-000051-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000043-000003-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000043-000003-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000043-000003-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000002-000086-000017-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000002-000086-000017-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000002-000086-000017-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000016-000050-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000016-000050-g35-03-R.json 138 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000016-000050-g35-03-T.pkl
sleep 600