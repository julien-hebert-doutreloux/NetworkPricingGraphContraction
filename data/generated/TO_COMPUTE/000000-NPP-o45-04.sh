#!/bin/bash
#SBATCH --cpus-per-task=2
#SBATCH --mem=5G
#SBATCH --time=3:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/graphs/progressive-2/o45-04/000000-NPP-o45-04.json ./data/generated/results/progressive-2/o45-04/000000-NPP-o45-04.json
sleep 60