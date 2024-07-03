#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=38:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000016-000013-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000016-000013-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000016-000013-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000013-000014-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000013-000014-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000013-000014-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000006-000005-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000006-000005-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000006-000005-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000029-000097-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000029-000097-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000029-000097-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000031-000092-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000031-000092-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000031-000092-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000037-000080-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000037-000080-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000037-000080-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000021-000034-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000021-000034-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000021-000034-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000023-000020-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000023-000020-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000023-000020-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000022-000025-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000022-000025-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000022-000025-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000032-000068-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000032-000068-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000032-000068-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000009-000003-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000009-000003-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000009-000003-g35-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-06/000001-000028-000097-g35-06-P.pkl ./data/generated/problems/paper/g35-06/000001-000028-000097-g35-06-R.json 14 ./data/generated/problems/paper/original/000000-000000-g35-06-P.json ./data/generated/problems/paper/g35-06/000001-000028-000097-g35-06-T.pkl
sleep 600