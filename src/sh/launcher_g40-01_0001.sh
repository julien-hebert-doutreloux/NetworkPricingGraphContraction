#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:39:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000013-000020-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000013-000020-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000013-000020-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000000-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000000-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000000-000049-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000018-000043-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000018-000043-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000018-000043-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000021-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000021-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000021-000049-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000031-000048-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000031-000048-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000031-000048-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000030-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000030-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000030-000049-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000029-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000029-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000029-000049-g40-01-T.pkl
sleep 600