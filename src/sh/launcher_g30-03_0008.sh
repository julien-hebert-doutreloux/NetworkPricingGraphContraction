#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=39:59:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000007-000005-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000007-000005-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000007-000005-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000025-000079-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000025-000079-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000025-000079-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000004-000005-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000004-000005-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000004-000005-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000038-000073-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000038-000073-g30-03-R.json 158 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000038-000073-g30-03-T.pkl
sleep 600