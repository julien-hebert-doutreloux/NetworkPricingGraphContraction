#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=31:13:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000015-000061-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000015-000061-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000015-000061-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000018-000070-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000018-000070-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000018-000070-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000025-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000025-000002-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000025-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000027-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000027-000002-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000027-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000030-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000030-000002-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000030-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000024-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000024-000002-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000024-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000000-000032-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000000-000032-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000000-000032-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000003-000017-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000003-000017-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000003-000017-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000019-000069-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000019-000069-g35-10-R.json 54 1 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000019-000069-g35-10-T.pkl
sleep 600