#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:53:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000000-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000000-000003-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000000-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000006-000005-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000006-000005-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000006-000005-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000011-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000011-000003-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000011-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000007-000005-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000007-000005-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000007-000005-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000032-000067-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000032-000067-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000032-000067-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000010-000003-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000010-000003-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000010-000003-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000039-000072-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000039-000072-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000039-000072-g45-07-T.pkl
sleep 600