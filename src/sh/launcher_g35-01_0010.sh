#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000096-000020-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000096-000020-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000096-000020-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000049-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000049-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000049-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000060-000002-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000060-000002-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000060-000002-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000001-000073-000050-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000001-000073-000050-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000001-000073-000050-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000054-000039-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000054-000039-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000054-000039-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000002-000051-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000002-000051-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000002-000051-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000002-000071-000051-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000002-000071-000051-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000002-000071-000051-g35-01-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-01/000003-000019-000021-g35-01-P.pkl ./data/generated/problems/paper/g35-01/000003-000019-000021-g35-01-R.json 71 ./data/generated/problems/paper/original/000000-000000-g35-01-P.json ./data/generated/problems/paper/g35-01/000003-000019-000021-g35-01-T.pkl
sleep 600