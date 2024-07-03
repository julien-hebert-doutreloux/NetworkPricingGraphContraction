#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=26:27:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000009-000098-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000009-000098-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000009-000098-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000022-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000022-000003-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000022-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000007-000065-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000007-000065-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000007-000065-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000013-000072-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000013-000072-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000013-000072-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000003-000019-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000003-000019-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000003-000019-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000028-000006-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000028-000006-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000028-000006-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000021-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000021-000003-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000021-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000035-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000035-000007-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000035-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000015-000060-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000015-000060-g30-06-R.json 57 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000015-000060-g30-06-T.pkl
sleep 600