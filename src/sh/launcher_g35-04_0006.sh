#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000026-000068-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000026-000068-g35-04-R.json 69 3 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000026-000068-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000027-000062-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000027-000062-g35-04-R.json 69 3 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000027-000062-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000005-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000005-000002-g35-04-R.json 69 3 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000005-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000015-000021-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000015-000021-g35-04-R.json 69 3 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000015-000021-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000007-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000007-000002-g35-04-R.json 69 3 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000007-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000014-000027-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000014-000027-g35-04-R.json 69 3 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000014-000027-g35-04-T.pkl
sleep 600