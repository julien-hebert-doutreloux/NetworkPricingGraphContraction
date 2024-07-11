#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:57:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000022-000098-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000022-000098-g30-07-R.json 37 0 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000022-000098-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000020-000099-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000020-000099-g30-07-R.json 37 0 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000020-000099-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000030-000078-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000030-000078-g30-07-R.json 37 0 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000030-000078-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000031-000080-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000031-000080-g30-07-R.json 37 0 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000031-000080-g30-07-T.pkl
sleep 600