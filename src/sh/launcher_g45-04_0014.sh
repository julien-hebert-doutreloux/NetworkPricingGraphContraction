#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=50:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimumlong
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000015-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000015-000014-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000015-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000006-000005-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000006-000005-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000006-000005-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000020-000029-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000020-000029-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000020-000029-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000011-000003-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000011-000003-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000011-000003-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000024-000087-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000024-000087-g45-04-R.json 200 5 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000024-000087-g45-04-T.pkl
sleep 600