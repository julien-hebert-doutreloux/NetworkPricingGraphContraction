#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000028-000047-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000028-000047-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000028-000047-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000001-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000001-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000001-000049-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000011-000020-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000011-000020-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000011-000020-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000022-000047-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000022-000047-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000022-000047-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000026-000049-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000026-000049-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000026-000049-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000012-000021-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000012-000021-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000012-000021-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000019-000047-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000019-000047-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000019-000047-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000004-000001-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000004-000001-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000004-000001-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000009-000002-g40-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-01/000001-000010-000029-g40-01-P.pkl ./data/generated/problems/paper/g40-01/000001-000010-000029-g40-01-R.json 12 ./data/generated/problems/paper/original/000000-000000-g40-01-P.json ./data/generated/problems/paper/g40-01/000001-000010-000029-g40-01-T.pkl
sleep 600