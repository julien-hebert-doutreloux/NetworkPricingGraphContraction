#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=39:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000007-000005-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000007-000005-g35-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000007-000005-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000023-000016-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000023-000016-g35-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000023-000016-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000018-000014-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000018-000014-g35-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000018-000014-g35-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-08/000001-000036-000072-g35-08-P.pkl ./data/generated/problems/paper/g35-08/000001-000036-000072-g35-08-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g35-08-P.json ./data/generated/problems/paper/g35-08/000001-000036-000072-g35-08-T.pkl
sleep 600