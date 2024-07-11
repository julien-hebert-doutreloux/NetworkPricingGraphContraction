#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000023-000005-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000023-000005-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000023-000005-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000035-000023-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000035-000023-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000035-000023-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000000-000040-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000000-000040-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000000-000040-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000001-000035-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000001-000035-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000001-000035-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000034-000023-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000034-000023-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000034-000023-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000033-000028-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000033-000028-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000033-000028-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000028-000010-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000028-000010-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000028-000010-g45-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-08/000001-000029-000011-g45-08-P.pkl ./data/generated/problems/paper/g45-08/000001-000029-000011-g45-08-R.json 79 0 ./data/generated/problems/paper/original/000000-000000-g45-08-P.json ./data/generated/problems/paper/g45-08/000001-000029-000011-g45-08-T.pkl
sleep 600