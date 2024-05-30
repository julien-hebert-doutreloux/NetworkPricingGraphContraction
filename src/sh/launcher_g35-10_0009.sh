#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:06:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000031-000017-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000031-000017-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000031-000017-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000009-000013-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000009-000013-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000009-000013-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000076-000051-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000076-000051-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000076-000051-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000003-000048-000019-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000003-000048-000019-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000003-000048-000019-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000072-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000072-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000072-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000061-000051-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000061-000051-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000061-000051-g35-10-T.pkl
sleep 600