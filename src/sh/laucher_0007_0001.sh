#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:17:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000000-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000000-000005-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000000-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000016-000097-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000016-000097-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000016-000097-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000020-000073-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000020-000073-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000020-000073-g35-06-T.pkl
sleep 601