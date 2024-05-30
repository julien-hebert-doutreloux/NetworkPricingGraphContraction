#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000061-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000061-000002-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000061-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000015-000021-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000015-000021-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000015-000021-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000041-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000041-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000041-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000032-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000032-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000032-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000016-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000016-000001-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000016-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000035-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000035-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000035-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000009-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000009-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000009-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000030-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000030-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000030-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000078-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000078-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000078-000050-g30-10-T.pkl
sleep 600