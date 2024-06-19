#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000014-000060-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000014-000060-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000014-000060-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000004-000083-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000004-000083-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000004-000083-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000001-000026-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000001-000026-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000001-000026-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000018-000073-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000018-000073-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000018-000073-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000010-000093-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000010-000093-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000010-000093-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000000-000032-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000000-000032-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000000-000032-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000017-000076-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000017-000076-g30-08-R.json 31 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000017-000076-g30-08-T.pkl
sleep 600