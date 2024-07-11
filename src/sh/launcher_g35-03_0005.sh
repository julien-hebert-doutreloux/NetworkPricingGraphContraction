#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=41:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000002-000003-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000002-000003-g35-03-R.json 124 0 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000002-000003-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000031-000086-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000031-000086-g35-03-R.json 124 0 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000031-000086-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000003-000003-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000003-000003-g35-03-R.json 124 0 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000003-000003-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000013-000014-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000013-000014-g35-03-R.json 124 0 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000013-000014-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000007-000005-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000007-000005-g35-03-R.json 124 0 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000007-000005-g35-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-03/000001-000030-000096-g35-03-P.pkl ./data/generated/problems/paper/g35-03/000001-000030-000096-g35-03-R.json 124 0 ./data/generated/problems/paper/original/000000-000000-g35-03-P.json ./data/generated/problems/paper/g35-03/000001-000030-000096-g35-03-T.pkl
sleep 600