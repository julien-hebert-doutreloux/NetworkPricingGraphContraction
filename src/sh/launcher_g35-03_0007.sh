#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:43:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000039-000072-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000039-000072-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000039-000072-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000000-000003-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000000-000003-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000000-000003-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000029-000095-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000029-000095-g35-03-R.json 124 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000029-000095-g35-03-T.pkl
sleep 600