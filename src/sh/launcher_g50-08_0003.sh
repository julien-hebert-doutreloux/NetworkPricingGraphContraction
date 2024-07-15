#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=34:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000009-000002-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000009-000002-g50-08-R.json 121 4 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000009-000002-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000010-000002-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000010-000002-g50-08-R.json 121 4 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000010-000002-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000027-000048-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000027-000048-g50-08-R.json 121 4 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000027-000048-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000004-000002-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000004-000002-g50-08-R.json 121 4 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000004-000002-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000005-000002-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000005-000002-g50-08-R.json 121 4 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000005-000002-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000015-000014-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000015-000014-g50-08-R.json 121 4 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000015-000014-g50-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-08/000001-000031-000076-g50-08-P.pkl ./data/generated/problems/paper/g50-08/000001-000031-000076-g50-08-R.json 121 4 ./data/generated/problems/paper/original/000000-000000-g50-08-P.json ./data/generated/problems/paper/g50-08/000001-000031-000076-g50-08-T.pkl
sleep 600