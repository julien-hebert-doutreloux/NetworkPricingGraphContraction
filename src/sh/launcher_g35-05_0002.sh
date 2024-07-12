#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=24:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000028-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000028-000002-g35-05-R.json 19 1 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000028-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000005-000072-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000005-000072-g35-05-R.json 19 1 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000005-000072-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000004-000086-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000004-000086-g35-05-R.json 19 1 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000004-000086-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000014-000059-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000014-000059-g35-05-R.json 19 1 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000014-000059-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000002-000020-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000002-000020-g35-05-R.json 19 1 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000002-000020-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000010-000089-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000010-000089-g35-05-R.json 19 1 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000010-000089-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000018-000076-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000018-000076-g35-05-R.json 19 1 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000018-000076-g35-05-T.pkl
sleep 600