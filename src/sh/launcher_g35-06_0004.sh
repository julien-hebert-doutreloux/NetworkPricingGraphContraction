#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:23:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000022-000045-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000022-000045-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000022-000045-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000026-000049-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000026-000049-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000026-000049-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000038-000048-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000038-000048-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000038-000048-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000041-000041-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000041-000041-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000041-000041-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000014-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000014-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000014-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000039-000048-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000039-000048-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000039-000048-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000017-000024-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000017-000024-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000017-000024-g35-06-T.pkl
sleep 600