#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000013-000019-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000013-000019-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000013-000019-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000012-000018-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000012-000018-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000012-000018-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000023-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000023-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000023-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000020-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000020-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000020-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000032-000035-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000032-000035-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000032-000035-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000000-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000000-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000000-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000037-000047-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000037-000047-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000037-000047-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000005-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000005-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000005-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000010-000017-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000010-000017-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000010-000017-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000048-000047-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000048-000047-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000048-000047-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000003-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000003-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000003-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000045-000048-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000045-000048-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000045-000048-g40-05-T.pkl
sleep 600