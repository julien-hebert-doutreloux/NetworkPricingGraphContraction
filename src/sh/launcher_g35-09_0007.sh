#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000017-000020-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000017-000020-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000017-000020-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000039-000026-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000039-000026-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000039-000026-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000011-000021-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000011-000021-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000011-000021-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000043-000025-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000043-000025-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000043-000025-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000007-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000007-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000007-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000003-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000003-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000003-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000003-000073-000016-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000003-000073-000016-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000003-000073-000016-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000027-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000027-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000027-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000049-000027-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000049-000027-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000049-000027-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000045-000025-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000045-000025-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000045-000025-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000032-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000032-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000032-000050-g35-09-T.pkl
sleep 600