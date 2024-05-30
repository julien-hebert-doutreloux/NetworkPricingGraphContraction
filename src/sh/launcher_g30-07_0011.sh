#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000095-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000095-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000095-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000084-000040-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000084-000040-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000084-000040-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000034-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000034-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000034-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000014-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000014-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000014-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000077-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000077-000002-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000077-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000074-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000074-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000074-000050-g30-07-T.pkl
sleep 600