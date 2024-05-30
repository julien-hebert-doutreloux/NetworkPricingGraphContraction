#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000089-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000089-000001-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000089-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000018-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000018-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000018-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000094-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000094-000001-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000094-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000087-000004-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000087-000004-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000087-000004-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000012-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000012-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000012-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000092-000022-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000092-000022-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000092-000022-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000090-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000090-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000090-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000065-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000065-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000065-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000060-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000060-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000060-000051-g40-04-T.pkl
sleep 600