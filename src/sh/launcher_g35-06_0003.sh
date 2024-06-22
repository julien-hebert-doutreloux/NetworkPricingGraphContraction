#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000007-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000007-000005-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000007-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000001-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000001-000003-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000001-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000017-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000017-000014-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000017-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000014-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000014-000014-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000014-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000019-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000019-000014-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000019-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000004-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000004-000005-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000004-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000025-000088-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000025-000088-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000025-000088-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000035-000068-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000035-000068-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000035-000068-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000018-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000018-000014-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000018-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000030-000098-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000030-000098-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000030-000098-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000020-000031-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000020-000031-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000020-000031-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000026-000083-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000026-000083-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000026-000083-g35-06-T.pkl
sleep 600