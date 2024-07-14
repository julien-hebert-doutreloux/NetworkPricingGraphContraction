#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000020-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000020-000001-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000020-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000008-000096-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000008-000096-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000008-000096-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000027-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000027-000002-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000027-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000029-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000015-000053-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000015-000053-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000015-000053-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000026-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000026-000002-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000026-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000007-000058-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000007-000058-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000007-000058-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000001-000023-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000001-000023-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000001-000023-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000024-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000024-000002-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000024-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000003-000017-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000003-000017-g40-04-R.json 37 3 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000003-000017-g40-04-T.pkl
sleep 600