#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=21:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-03/000001-000017-000063-g40-03-P.pkl ./data/generated/problems/paper/g40-03/000001-000017-000063-g40-03-R.json 150.806673849 ./data/generated/problems/paper/g40-03/g40-03.json ./data/generated/problems/paper/g40-03/000001-000017-000063-g40-03-T.pkl
sleep 601