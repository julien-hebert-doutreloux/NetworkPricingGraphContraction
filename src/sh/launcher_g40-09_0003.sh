#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000025-000073-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000025-000073-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000025-000073-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000012-000036-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000012-000036-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000012-000036-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000010-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000010-000002-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000010-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000027-000061-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000027-000061-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000027-000061-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000011-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000011-000002-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000011-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000017-000087-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000017-000087-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000017-000087-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000004-000002-g40-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-09/000001-000013-000036-g40-09-P.pkl ./data/generated/problems/paper/g40-09/000001-000013-000036-g40-09-R.json 42 ./data/generated/problems/paper/original/000000-000000-g40-09-P.json ./data/generated/problems/paper/g40-09/000001-000013-000036-g40-09-T.pkl
sleep 600