#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000031-000065-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000031-000065-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000031-000065-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000029-000071-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000029-000071-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000029-000071-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000028-000073-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000028-000073-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000028-000073-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000024-000062-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000024-000062-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000024-000062-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000027-000056-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000027-000056-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000027-000056-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000016-000081-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000016-000081-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000016-000081-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000009-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000009-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000009-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000004-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000004-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000004-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000000-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000000-000001-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000000-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000021-000083-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000021-000083-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000021-000083-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000022-000090-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000022-000090-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000022-000090-g40-02-T.pkl
sleep 600