#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000045-000050-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000045-000050-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000045-000050-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000071-000051-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000071-000051-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000071-000051-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000094-000050-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000094-000050-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000094-000050-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000101-000051-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000101-000051-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000101-000051-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000016-000003-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000016-000003-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000016-000003-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000002-000052-000041-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000002-000052-000041-g45-08-R.json 83 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000002-000052-000041-g45-08-T.pkl
sleep 600