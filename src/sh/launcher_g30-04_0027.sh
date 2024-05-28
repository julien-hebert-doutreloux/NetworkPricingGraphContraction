#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=42:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000017-000005-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000017-000005-g30-04-R.json 243 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000017-000005-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000010-000003-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000010-000003-g30-04-R.json 243 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000010-000003-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000013-000005-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000013-000005-g30-04-R.json 243 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000013-000005-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000038-000049-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000038-000049-g30-04-R.json 243 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000038-000049-g30-04-T.pkl
sleep 600