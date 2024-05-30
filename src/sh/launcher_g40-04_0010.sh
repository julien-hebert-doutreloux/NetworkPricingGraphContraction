#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000072-000049-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000072-000049-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000072-000049-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000051-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000051-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000051-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000064-000023-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000064-000023-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000064-000023-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000052-000012-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000052-000012-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000052-000012-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000034-000042-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000034-000042-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000034-000042-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000084-000011-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000084-000011-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000084-000011-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000091-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000091-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000091-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000001-000031-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000001-000031-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000001-000031-g40-04-T.pkl
sleep 600