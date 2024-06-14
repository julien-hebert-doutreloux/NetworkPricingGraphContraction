#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=23:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000076-000015-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000076-000015-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000076-000015-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000022-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000022-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000022-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000015-000019-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000015-000019-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000015-000019-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000018-000018-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000018-000018-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000018-000018-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000004-000051-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000004-000051-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000004-000051-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000044-000018-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000044-000018-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000044-000018-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000085-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000085-000002-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000085-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000012-000012-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000012-000012-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000012-000012-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000057-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000057-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000057-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000010-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000010-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000010-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000046-000051-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000046-000051-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000046-000051-g35-04-T.pkl
sleep 600