#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000007-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000007-000002-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000007-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000003-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000003-000001-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000003-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000018-000057-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000018-000057-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000018-000057-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000031-000070-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000031-000070-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000031-000070-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000023-000084-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000023-000084-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000023-000084-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000010-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000010-000002-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000010-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000006-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000006-000002-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000006-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000001-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000001-000001-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000001-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000020-000094-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000020-000094-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000020-000094-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000029-000068-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000029-000068-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000029-000068-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000028-000076-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000028-000076-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000028-000076-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000027-000060-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000027-000060-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000027-000060-g40-02-T.pkl
sleep 600