#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=06:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000008-000098-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000008-000098-g35-02-R.json 26.935473512 ./data/generated/problems/paper/g35-02/g35-02.json ./data/generated/problems/paper/g35-02/000001-000008-000098-g35-02-T.pkl
sleep 601