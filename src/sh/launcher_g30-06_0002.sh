#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=18:21:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000008-000020-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000008-000020-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000008-000020-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000006-000024-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000006-000024-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000006-000024-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000059-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000059-000003-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000059-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000003-000096-000022-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000003-000096-000022-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000003-000096-000022-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000042-000041-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000042-000041-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000042-000041-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000018-000021-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000018-000021-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000018-000021-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000070-000050-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000070-000050-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000070-000050-g30-06-T.pkl
sleep 600