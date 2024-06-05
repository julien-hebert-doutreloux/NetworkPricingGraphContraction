#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:46:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000051-000050-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000051-000050-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000051-000050-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000021-000005-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000021-000005-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000021-000005-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000035-000003-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000035-000003-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000035-000003-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000005-000050-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000005-000050-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000005-000050-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000003-000029-000022-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000003-000029-000022-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000003-000029-000022-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000076-000022-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000076-000022-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000076-000022-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000003-000038-000012-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000003-000038-000012-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000003-000038-000012-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000104-000050-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000104-000050-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000104-000050-g45-04-T.pkl
sleep 600