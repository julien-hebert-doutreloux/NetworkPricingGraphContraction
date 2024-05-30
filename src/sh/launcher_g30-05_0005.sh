#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000029-000050-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000029-000050-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000029-000050-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000088-000018-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000088-000018-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000088-000018-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000012-000021-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000012-000021-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000012-000021-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000009-000001-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000009-000001-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000009-000001-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000083-000050-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000083-000050-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000083-000050-g30-05-T.pkl
sleep 600