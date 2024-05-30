#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000095-000032-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000095-000032-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000095-000032-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000068-000025-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000068-000025-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000068-000025-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000033-000001-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000033-000001-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000033-000001-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000075-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000075-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000075-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000009-000026-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000009-000026-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000009-000026-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000027-000020-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000027-000020-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000027-000020-g35-04-T.pkl
sleep 600