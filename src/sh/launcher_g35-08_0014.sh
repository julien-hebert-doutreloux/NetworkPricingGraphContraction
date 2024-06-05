#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:18:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000001-000014-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000001-000014-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000001-000014-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000081-000005-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000081-000005-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000081-000005-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000086-000050-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000086-000050-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000086-000050-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000092-000050-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000092-000050-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000092-000050-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000009-000014-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000009-000014-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000009-000014-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000060-000003-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000060-000003-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000060-000003-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000095-000003-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000095-000003-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000095-000003-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000014-000037-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000014-000037-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000014-000037-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000094-000003-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000094-000003-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000094-000003-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000003-000055-000023-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000003-000055-000023-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000003-000055-000023-g35-08-T.pkl
sleep 600