#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:11:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000091-000050-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000091-000050-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000091-000050-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000092-000017-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000092-000017-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000092-000017-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000001-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000001-000014-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000001-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000034-000051-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000034-000051-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000034-000051-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000002-000031-000051-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000002-000031-000051-g45-01-R.json 75 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000002-000031-000051-g45-01-T.pkl
sleep 600