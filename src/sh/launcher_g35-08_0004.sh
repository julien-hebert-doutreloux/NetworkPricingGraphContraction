#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000003-000025-000012-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000003-000025-000012-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000003-000025-000012-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000008-000014-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000008-000014-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000008-000014-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000039-000051-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000039-000051-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000039-000051-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000019-000050-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000019-000050-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000019-000050-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000003-000037-000004-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000003-000037-000004-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000003-000037-000004-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000002-000014-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000002-000014-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000002-000014-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000078-000005-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000078-000005-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000078-000005-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000066-000050-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000066-000050-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000066-000050-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000103-000018-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000103-000018-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000103-000018-g35-08-T.pkl
sleep 600