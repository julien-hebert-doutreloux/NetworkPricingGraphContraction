#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000029-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000029-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000029-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000030-000018-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000030-000018-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000030-000018-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000009-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000009-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000009-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000008-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000008-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000008-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000027-000015-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000027-000015-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000027-000015-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000013-000019-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000013-000019-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000013-000019-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000012-000018-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000012-000018-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000012-000018-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000023-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000023-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000023-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000020-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000020-000005-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000020-000005-g40-05-T.pkl
sleep 600