#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000023-000048-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000023-000048-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000023-000048-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000020-000049-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000020-000049-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000020-000049-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000014-000045-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000014-000045-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000014-000045-g40-02-T.pkl
sleep 600