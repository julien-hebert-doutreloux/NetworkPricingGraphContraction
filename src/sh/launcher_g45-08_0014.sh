#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000005-000024-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000005-000024-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000005-000024-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000095-000051-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000095-000051-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000095-000051-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000030-000030-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000030-000030-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000030-000030-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000043-000019-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000043-000019-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000043-000019-g45-08-T.pkl
sleep 600