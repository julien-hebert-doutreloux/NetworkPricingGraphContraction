#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=46:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000003-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000003-000003-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000003-000003-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000022-000022-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000022-000022-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000022-000022-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000017-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000017-000014-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000017-000014-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000012-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000012-000014-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000012-000014-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000001-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000001-000003-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000001-000003-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000000-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000000-000003-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000000-000003-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000035-000068-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000035-000068-g30-02-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000035-000068-g30-02-T.pkl
sleep 600