#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:56:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000005-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000005-000005-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000005-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000013-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000013-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000013-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000040-000049-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000040-000049-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000040-000049-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000012-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000012-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000012-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000029-000047-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000029-000047-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000029-000047-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000002-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000002-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000002-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000003-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000003-000003-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000003-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000020-000025-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000020-000025-g35-06-R.json 15 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000020-000025-g35-06-T.pkl
sleep 600