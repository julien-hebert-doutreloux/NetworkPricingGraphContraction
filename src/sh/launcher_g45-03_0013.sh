#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000003-000005-000001-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000003-000005-000001-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000003-000005-000001-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000096-000007-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000096-000007-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000096-000007-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000099-000036-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000099-000036-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000099-000036-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000052-000050-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000052-000050-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000052-000050-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000002-000009-000038-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000002-000009-000038-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000002-000009-000038-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000002-000104-000021-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000002-000104-000021-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000002-000104-000021-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000056-000027-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000056-000027-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000056-000027-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000070-000050-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000070-000050-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000070-000050-g45-03-T.pkl
sleep 600