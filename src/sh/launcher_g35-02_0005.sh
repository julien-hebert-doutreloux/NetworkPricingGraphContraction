#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:59:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000027-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000027-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000027-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000065-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000065-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000065-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000036-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000036-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000036-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000016-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000016-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000016-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000052-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000052-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000052-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000006-000023-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000006-000023-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000006-000023-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000039-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000039-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000039-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000031-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000031-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000031-000051-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000045-000051-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000045-000051-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000045-000051-g35-02-T.pkl
sleep 600