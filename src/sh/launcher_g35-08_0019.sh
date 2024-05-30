#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:01:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000003-000013-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000003-000013-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000003-000013-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000018-000027-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000018-000027-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000018-000027-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000002-000076-000051-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000002-000076-000051-g35-08-R.json 200 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000002-000076-000051-g35-08-T.pkl
sleep 600