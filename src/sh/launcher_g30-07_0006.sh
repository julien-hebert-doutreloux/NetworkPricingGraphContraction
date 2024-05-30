#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:44:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000006-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000006-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000006-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000003-000028-000008-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000003-000028-000008-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000003-000028-000008-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000097-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000097-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000097-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000045-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000045-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000045-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000025-000001-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000025-000001-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000025-000001-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000027-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000027-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000027-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000022-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000022-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000022-000051-g30-07-T.pkl
sleep 600