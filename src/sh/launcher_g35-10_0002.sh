#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000063-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000063-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000063-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000032-000017-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000032-000017-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000032-000017-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000025-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000025-000002-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000025-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000075-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000075-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000075-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000085-000051-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000085-000051-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000085-000051-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000087-000001-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000087-000001-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000087-000001-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000027-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000027-000002-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000027-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000021-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000021-000002-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000021-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000003-000090-000009-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000003-000090-000009-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000003-000090-000009-g35-10-T.pkl
sleep 600