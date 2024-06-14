#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=21:31:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000003-000075-000019-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000003-000075-000019-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000003-000075-000019-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000071-000051-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000071-000051-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000071-000051-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000000-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000000-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000000-000050-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000002-000015-000024-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000002-000015-000024-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000002-000015-000024-g40-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-07/000001-000073-000050-g40-07-P.pkl ./data/generated/problems/paper/g40-07/000001-000073-000050-g40-07-R.json 117 ./data/generated/problems/paper/original/000000-000000-g40-07-P.json ./data/generated/problems/paper/g40-07/000001-000073-000050-g40-07-T.pkl
sleep 600