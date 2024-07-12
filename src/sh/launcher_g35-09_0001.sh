#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=28:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000004-000079-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000004-000079-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000004-000079-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000009-000092-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000009-000092-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000009-000092-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000006-000075-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000006-000075-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000006-000075-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000007-000078-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000007-000078-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000007-000078-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000014-000069-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000014-000069-g35-09-R.json 27 1 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000014-000069-g35-09-T.pkl
sleep 600