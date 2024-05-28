#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:02:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000029-000046-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000029-000046-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000029-000046-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000003-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000003-000001-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000003-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000000-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000000-000001-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000000-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000014-000041-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000014-000041-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000014-000041-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000019-000047-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000019-000047-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000019-000047-g40-04-T.pkl
sleep 600