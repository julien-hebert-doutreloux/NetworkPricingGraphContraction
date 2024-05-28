#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000022-000048-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000022-000048-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000022-000048-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000007-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000007-000001-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000007-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000019-000048-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000019-000048-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000019-000048-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000005-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000005-000001-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000005-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000021-000049-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000021-000049-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000021-000049-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000031-000049-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000031-000049-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000031-000049-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000012-000017-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000012-000017-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000012-000017-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000027-000048-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000027-000048-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000027-000048-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000025-000049-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000025-000049-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000025-000049-g30-10-T.pkl
sleep 600