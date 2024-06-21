#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:02:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000015-000014-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000015-000014-g45-01-R.json 64 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000015-000014-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000034-000060-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000034-000060-g45-01-R.json 64 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000034-000060-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000036-000073-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000036-000073-g45-01-R.json 64 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000036-000073-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000009-000003-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000009-000003-g45-01-R.json 64 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000009-000003-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000004-000005-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000004-000005-g45-01-R.json 64 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000004-000005-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000032-000071-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000032-000071-g45-01-R.json 64 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000032-000071-g45-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-01/000001-000037-000069-g45-01-P.pkl ./data/generated/problems/paper/g45-01/000001-000037-000069-g45-01-R.json 64 ./data/generated/problems/paper/original/000000-000000-g45-01-P.json ./data/generated/problems/paper/g45-01/000001-000037-000069-g45-01-T.pkl
sleep 600