#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000013-000069-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000013-000069-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000013-000069-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000007-000067-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000007-000067-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000007-000067-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000019-000072-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000019-000072-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000019-000072-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000012-000071-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000012-000071-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000012-000071-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000009-000093-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000009-000093-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000009-000093-g30-08-T.pkl
sleep 600