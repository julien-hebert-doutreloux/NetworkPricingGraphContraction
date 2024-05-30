#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:32:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000086-000051-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000086-000051-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000086-000051-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000002-000009-000018-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000002-000009-000018-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000002-000009-000018-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000025-000002-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000025-000002-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000025-000002-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000050-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000050-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000050-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000075-000021-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000075-000021-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000075-000021-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000058-000001-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000058-000001-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000058-000001-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000008-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000008-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000008-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000079-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000079-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000079-000050-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000003-000070-000016-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000003-000070-000016-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000003-000070-000016-g40-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-04/000001-000010-000050-g40-04-P.pkl ./data/generated/problems/paper/g40-04/000001-000010-000050-g40-04-R.json 36 ./data/generated/problems/paper/original/000000-000000-g40-04-P.json ./data/generated/problems/paper/g40-04/000001-000010-000050-g40-04-T.pkl
sleep 600