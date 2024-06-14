#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=07:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000088-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000088-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000088-000050-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000092-000014-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000092-000014-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000092-000014-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000053-000019-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000053-000019-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000003-000053-000019-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000028-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000028-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000028-000050-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000003-000037-000015-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000003-000037-000015-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000003-000037-000015-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000077-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000077-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000077-000050-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000082-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000082-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000082-000050-g40-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-05/000001-000019-000050-g40-05-P.pkl ./data/generated/problems/paper/g40-05/000001-000019-000050-g40-05-R.json 14 ./data/generated/problems/paper/original/000000-000000-g40-05-P.json ./data/generated/problems/paper/g40-05/000001-000019-000050-g40-05-T.pkl
sleep 600