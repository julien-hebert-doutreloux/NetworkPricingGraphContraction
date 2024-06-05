#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000004-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000004-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000004-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000043-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000043-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000043-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000033-000027-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000033-000027-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000033-000027-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000070-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000070-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000070-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000008-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000008-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000008-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000078-000018-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000078-000018-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000078-000018-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000023-000021-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000023-000021-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000023-000021-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000053-000051-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000053-000051-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000053-000051-g40-07-T.pkl
sleep 600