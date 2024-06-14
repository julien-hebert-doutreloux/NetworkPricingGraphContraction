#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=06:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000009-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000009-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000009-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000044-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000044-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000044-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000002-000033-000021-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000002-000033-000021-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000002-000033-000021-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000034-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000034-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000034-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000003-000029-000023-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000003-000029-000023-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000003-000029-000023-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000046-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000046-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000046-000050-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000003-000079-000008-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000003-000079-000008-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000003-000079-000008-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000032-000050-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000032-000050-g30-09-R.json 10 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000032-000050-g30-09-T.pkl
sleep 600