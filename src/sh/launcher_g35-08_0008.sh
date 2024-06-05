#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000011-000019-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000011-000019-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000011-000019-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000003-000040-000021-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000003-000040-000021-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000003-000040-000021-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000099-000022-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000099-000022-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000099-000022-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000042-000051-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000042-000051-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000042-000051-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000000-000014-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000000-000014-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000000-000014-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000003-000046-000017-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000003-000046-000017-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000003-000046-000017-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000021-000050-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000021-000050-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000021-000050-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000070-000050-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000070-000050-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000070-000050-g35-08-T.pkl
sleep 600