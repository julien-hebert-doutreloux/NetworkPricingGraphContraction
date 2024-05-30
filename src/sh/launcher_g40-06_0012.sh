#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000096-000002-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000096-000002-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000096-000002-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000082-000051-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000082-000051-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000082-000051-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000009-000018-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000009-000018-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000009-000018-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000003-000033-000013-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000003-000033-000013-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000003-000033-000013-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000121-000020-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000121-000020-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000121-000020-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000091-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000091-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000091-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000067-000050-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000067-000050-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000067-000050-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000008-000018-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000008-000018-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000008-000018-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000002-000061-000051-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000002-000061-000051-g40-06-R.json 41 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000002-000061-000051-g40-06-T.pkl
sleep 600