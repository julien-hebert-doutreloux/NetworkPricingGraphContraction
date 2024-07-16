#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000007-000074-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000007-000074-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000007-000074-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000014-000066-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000014-000066-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000014-000066-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000001-000029-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000001-000029-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000001-000029-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000015-000067-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000015-000067-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000015-000067-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000008-000098-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000008-000098-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000008-000098-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000010-000094-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000010-000094-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000010-000094-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000009-000095-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000009-000095-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000009-000095-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000000-000029-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000000-000029-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000000-000029-g30-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-09/000001-000018-000069-g30-09-P.pkl ./data/generated/problems/paper/g30-09/000001-000018-000069-g30-09-R.json 9 5 ./data/generated/problems/paper/original/000000-000000-g30-09-P.json ./data/generated/problems/paper/g30-09/000001-000018-000069-g30-09-T.pkl
sleep 600