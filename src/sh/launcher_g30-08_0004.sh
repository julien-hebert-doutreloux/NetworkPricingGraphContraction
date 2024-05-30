#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000000-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000000-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000000-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000041-000016-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000041-000016-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000041-000016-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000055-000051-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000055-000051-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000055-000051-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000053-000021-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000053-000021-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000053-000021-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000047-000011-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000047-000011-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000047-000011-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000021-000027-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000021-000027-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000021-000027-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000008-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000008-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000008-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000051-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000051-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000051-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000003-000068-000022-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000003-000068-000022-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000003-000068-000022-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000013-000028-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000013-000028-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000013-000028-g30-08-T.pkl
sleep 600