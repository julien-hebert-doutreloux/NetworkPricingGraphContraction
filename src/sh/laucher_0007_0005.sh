#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=08:22:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000005-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000005-000014-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000005-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000015-000098-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000015-000098-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000015-000098-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000008-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000008-000014-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000008-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000001-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000001-000003-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000001-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000011-000099-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000011-000099-g35-06-R.json 14.876039898 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000011-000099-g35-06-T.pkl
sleep 601