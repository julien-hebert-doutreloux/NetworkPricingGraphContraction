#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=31:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000002-000017-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000002-000017-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000002-000017-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000023-000001-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000023-000001-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000023-000001-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000016-000073-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000016-000073-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000016-000073-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000004-000092-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000004-000092-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000004-000092-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000029-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000029-000002-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000029-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000009-000078-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000009-000078-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000009-000078-g35-10-T.pkl
sleep 600