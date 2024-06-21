#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=33:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000008-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000008-000002-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000008-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000009-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000009-000002-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000009-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000017-000081-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000017-000081-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000017-000081-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000010-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000010-000002-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000010-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000028-000076-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000028-000076-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000028-000076-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000030-000073-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000030-000073-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000030-000073-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000022-000097-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000022-000097-g35-04-R.json 69 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000022-000097-g35-04-T.pkl
sleep 600