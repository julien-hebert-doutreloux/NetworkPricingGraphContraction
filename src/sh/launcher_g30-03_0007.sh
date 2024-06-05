#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:28:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000002-000025-000051-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000002-000025-000051-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000002-000025-000051-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000092-000014-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000092-000014-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000092-000014-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000093-000014-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000093-000014-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000093-000014-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000002-000063-000051-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000002-000063-000051-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000002-000063-000051-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000001-000106-000043-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000001-000106-000043-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000001-000106-000043-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000002-000075-000028-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000002-000075-000028-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000002-000075-000028-g30-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-03/000002-000089-000027-g30-03-P.pkl ./data/generated/problems/paper/g30-03/000002-000089-000027-g30-03-R.json 199 ./data/generated/problems/paper/original/000000-000000-g30-03-P.json ./data/generated/problems/paper/g30-03/000002-000089-000027-g30-03-T.pkl
sleep 600