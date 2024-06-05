#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000003-000005-000021-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000003-000005-000021-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000003-000005-000021-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000031-000034-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000031-000034-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000031-000034-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000003-000078-000017-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000003-000078-000017-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000003-000078-000017-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000003-000057-000006-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000003-000057-000006-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000003-000057-000006-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000080-000051-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000080-000051-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000080-000051-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000059-000046-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000059-000046-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000059-000046-g45-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-02/000002-000022-000051-g45-02-P.pkl ./data/generated/problems/paper/g45-02/000002-000022-000051-g45-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-02-P.json ./data/generated/problems/paper/g45-02/000002-000022-000051-g45-02-T.pkl
sleep 600