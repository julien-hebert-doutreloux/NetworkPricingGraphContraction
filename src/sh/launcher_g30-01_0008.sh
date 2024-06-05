#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000065-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000065-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000065-000050-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000021-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000021-000002-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000021-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000003-000073-000014-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000003-000073-000014-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000003-000073-000014-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000027-000002-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000027-000002-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000027-000002-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000001-000085-000050-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000001-000085-000050-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000001-000085-000050-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000007-000026-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000007-000026-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000007-000026-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000082-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000082-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000082-000051-g30-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-01/000002-000078-000051-g30-01-P.pkl ./data/generated/problems/paper/g30-01/000002-000078-000051-g30-01-R.json 193 ./data/generated/problems/paper/original/000000-000000-g30-01-P.json ./data/generated/problems/paper/g30-01/000002-000078-000051-g30-01-T.pkl
sleep 600