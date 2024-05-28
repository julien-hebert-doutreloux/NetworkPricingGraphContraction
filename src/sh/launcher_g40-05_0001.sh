#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000041-000049-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000041-000049-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000041-000049-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000033-000036-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000033-000036-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000033-000036-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000043-000046-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000043-000046-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000043-000046-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000051-000029-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000051-000029-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000051-000029-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000016-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000016-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000016-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000036-000048-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000036-000048-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000036-000048-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000017-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000017-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000017-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000040-000048-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000040-000048-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000040-000048-g40-05-T.pkl
sleep 600