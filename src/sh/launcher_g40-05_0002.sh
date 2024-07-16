#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:55:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000020-000018-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000020-000018-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000020-000018-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000004-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000004-000014-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000004-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000008-000018-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000008-000018-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000008-000018-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000012-000031-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000012-000031-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000012-000031-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000036-000057-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000036-000057-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000036-000057-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000001-000005-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000001-000005-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000001-000005-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000011-000019-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000011-000019-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000011-000019-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000022-000015-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000022-000015-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000022-000015-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000029-000086-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000029-000086-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000029-000086-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000034-000057-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000034-000057-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000034-000057-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000038-000070-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000038-000070-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000038-000070-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000017-000032-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000017-000032-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000017-000032-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000024-000066-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000024-000066-g40-05-R.json 14 5 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000024-000066-g40-05-T.pkl
sleep 600