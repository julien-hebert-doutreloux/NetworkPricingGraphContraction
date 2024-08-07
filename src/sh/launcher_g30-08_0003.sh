#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000009-000093-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000009-000093-g30-08-R.json 30 5 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000009-000093-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000001-000027-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000001-000027-g30-08-R.json 30 5 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000001-000027-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000002-000019-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000002-000019-g30-08-R.json 30 5 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000002-000019-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000003-000019-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000003-000019-g30-08-R.json 30 5 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000003-000019-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000011-000083-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000011-000083-g30-08-R.json 30 5 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000011-000083-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000005-000077-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000005-000077-g30-08-R.json 30 5 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000005-000077-g30-08-T.pkl
sleep 600