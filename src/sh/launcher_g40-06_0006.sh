#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000018-000049-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000018-000049-g40-06-R.json 39 2 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000018-000049-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000005-000025-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000005-000025-g40-06-R.json 39 2 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000005-000025-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000017-000043-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000017-000043-g40-06-R.json 39 2 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000017-000043-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000023-000018-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000023-000018-g40-06-R.json 39 2 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000023-000018-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000020-000023-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000020-000023-g40-06-R.json 39 2 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000020-000023-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000011-000046-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000011-000046-g40-06-R.json 39 2 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000011-000046-g40-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-06/000001-000028-000098-g40-06-P.pkl ./data/generated/problems/paper/g40-06/000001-000028-000098-g40-06-R.json 39 2 ./data/generated/problems/paper/original/000000-000000-g40-06-P.json ./data/generated/problems/paper/g40-06/000001-000028-000098-g40-06-T.pkl
sleep 600