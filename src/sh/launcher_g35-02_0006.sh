#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000011-000045-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000011-000045-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000011-000045-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000080-000022-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000080-000022-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000080-000022-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000003-000067-000022-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000003-000067-000022-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000003-000067-000022-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000015-000045-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000015-000045-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000015-000045-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000030-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000030-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000030-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000048-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000048-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000048-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000002-000093-000038-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000002-000093-000038-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000002-000093-000038-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000018-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000018-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000018-000050-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000094-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000094-000002-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000094-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000081-000050-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000081-000050-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000081-000050-g35-02-T.pkl
sleep 600