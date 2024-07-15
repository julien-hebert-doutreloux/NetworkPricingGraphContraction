#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000035-000053-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000035-000053-g45-07-R.json 105 4 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000035-000053-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000019-000012-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000019-000012-g45-07-R.json 105 4 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000019-000012-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000022-000027-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000022-000027-g45-07-R.json 105 4 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000022-000027-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000003-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000003-000003-g45-07-R.json 105 4 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000003-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000002-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000002-000003-g45-07-R.json 105 4 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000002-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000014-000014-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000014-000014-g45-07-R.json 105 4 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000014-000014-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000004-000005-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000004-000005-g45-07-R.json 105 4 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000004-000005-g45-07-T.pkl
sleep 600