#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=39:08:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000007-000002-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000007-000002-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000007-000002-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000012-000033-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000012-000033-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000012-000033-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000025-000068-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000025-000068-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000025-000068-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000015-000018-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000015-000018-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000015-000018-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000020-000099-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000020-000099-g30-05-R.json 89 4 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000020-000099-g30-05-T.pkl
sleep 600