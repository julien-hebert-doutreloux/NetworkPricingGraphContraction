#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000023-000049-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000023-000049-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000023-000049-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000026-000048-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000026-000048-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000026-000048-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000006-000022-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000006-000022-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000006-000022-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000013-000043-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000013-000043-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000013-000043-g35-02-T.pkl
sleep 600