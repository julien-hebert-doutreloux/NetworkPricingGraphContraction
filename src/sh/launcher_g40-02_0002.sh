#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:19:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000022-000090-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000022-000090-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000022-000090-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000012-000026-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000012-000026-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000012-000026-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000007-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000007-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000007-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000003-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000003-000001-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000003-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000018-000054-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000018-000054-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000018-000054-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000019-000058-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000019-000058-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000019-000058-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000017-000060-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000017-000060-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000017-000060-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000010-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000010-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000010-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000006-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000006-000002-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000006-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000030-000071-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000030-000071-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000030-000071-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000001-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000001-000001-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000001-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000020-000096-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000020-000096-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000020-000096-g40-02-T.pkl
sleep 600