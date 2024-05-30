#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=04:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000015-000020-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000015-000020-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000015-000020-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000018-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000018-000002-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000018-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000024-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000024-000002-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000024-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000069-000051-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000069-000051-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000069-000051-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000002-000021-000022-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000002-000021-000022-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000002-000021-000022-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000003-000088-000021-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000003-000088-000021-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000003-000088-000021-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000003-000070-000016-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000003-000070-000016-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000003-000070-000016-g35-05-T.pkl
sleep 600