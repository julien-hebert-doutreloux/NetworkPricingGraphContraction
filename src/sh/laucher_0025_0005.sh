#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:07:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000016-000054-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000016-000054-g40-02-R.json 19.625954462 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000016-000054-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000015-000056-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000015-000056-g40-02-R.json 19.625954462 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000015-000056-g40-02-T.pkl
sleep 601