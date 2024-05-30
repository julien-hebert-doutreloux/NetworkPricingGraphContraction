#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000065-000035-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000065-000035-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000065-000035-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000041-000050-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000041-000050-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000041-000050-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000002-000038-000010-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000002-000038-000010-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000002-000038-000010-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000031-000016-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000031-000016-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000031-000016-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000094-000003-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000094-000003-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000094-000003-g30-05-T.pkl
sleep 600