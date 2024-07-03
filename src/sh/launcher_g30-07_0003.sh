#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=41:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000018-000081-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000018-000081-g30-07-R.json 37 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000018-000081-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000001-000001-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000001-000001-g30-07-R.json 37 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000001-000001-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000006-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000006-000002-g30-07-R.json 37 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000006-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000028-000082-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000028-000082-g30-07-R.json 37 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000028-000082-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000026-000073-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000026-000073-g30-07-R.json 37 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000026-000073-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000011-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000011-000002-g30-07-R.json 37 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000011-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000024-000066-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000024-000066-g30-07-R.json 37 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000024-000066-g30-07-T.pkl
sleep 600