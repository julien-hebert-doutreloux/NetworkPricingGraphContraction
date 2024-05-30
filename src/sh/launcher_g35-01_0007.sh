#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:49:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000042-000024-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000042-000024-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000042-000024-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000080-000051-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000080-000051-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000080-000051-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000052-000026-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000052-000026-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000052-000026-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000029-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000029-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000029-000050-g35-01-T.pkl
sleep 600