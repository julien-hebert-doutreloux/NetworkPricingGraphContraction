#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000011-000019-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000011-000019-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000011-000019-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000082-000018-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000082-000018-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000082-000018-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000032-000051-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000032-000051-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000032-000051-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000003-000061-000020-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000003-000061-000020-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000003-000061-000020-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000000-000002-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000000-000002-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000000-000002-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000071-000001-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000071-000001-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000071-000001-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000003-000045-000018-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000003-000045-000018-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000003-000045-000018-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000002-000050-000051-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000002-000050-000051-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000002-000050-000051-g45-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-09/000001-000089-000050-g45-09-P.pkl ./data/generated/problems/paper/g45-09/000001-000089-000050-g45-09-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-09-P.json ./data/generated/problems/paper/g45-09/000001-000089-000050-g45-09-T.pkl
sleep 600