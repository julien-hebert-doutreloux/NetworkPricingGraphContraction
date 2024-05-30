#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000011-000019-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000011-000019-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000011-000019-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000044-000051-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000044-000051-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000044-000051-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000020-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000020-000002-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000020-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000019-000019-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000019-000019-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000019-000019-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000049-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000049-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000049-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000069-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000069-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000069-000050-g35-10-T.pkl
sleep 600