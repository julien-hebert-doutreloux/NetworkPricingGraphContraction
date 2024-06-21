#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000014-000027-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000014-000027-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000014-000027-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000002-000001-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000002-000001-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000002-000001-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000012-000035-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000012-000035-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000012-000035-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000021-000097-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000021-000097-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000021-000097-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000003-000001-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000003-000001-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000003-000001-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000024-000078-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000024-000078-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000024-000078-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000013-000031-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000013-000031-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000013-000031-g35-04-T.pkl
sleep 600