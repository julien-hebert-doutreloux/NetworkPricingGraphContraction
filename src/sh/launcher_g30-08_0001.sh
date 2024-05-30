#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000028-000044-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000028-000044-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000028-000044-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000049-000051-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000049-000051-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000049-000051-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000042-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000042-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000042-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000034-000051-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000034-000051-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000034-000051-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000063-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000063-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000063-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000029-000050-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000029-000050-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000029-000050-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000002-000079-000051-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000002-000079-000051-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000002-000079-000051-g30-08-T.pkl
sleep 600