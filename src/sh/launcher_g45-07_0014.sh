#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=21:48:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000008-000019-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000008-000019-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000008-000019-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000057-000005-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000057-000005-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000057-000005-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000000-000014-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000000-000014-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000000-000014-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000078-000023-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000078-000023-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000078-000023-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000103-000014-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000103-000014-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000103-000014-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000061-000005-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000061-000005-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000061-000005-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000010-000050-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000010-000050-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000010-000050-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000072-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000072-000003-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000072-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000066-000005-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000066-000005-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000066-000005-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000002-000081-000045-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000002-000081-000045-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000002-000081-000045-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000003-000074-000015-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000003-000074-000015-g45-07-R.json 110 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000003-000074-000015-g45-07-T.pkl
sleep 600