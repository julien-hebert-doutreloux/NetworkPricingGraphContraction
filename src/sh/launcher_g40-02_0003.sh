#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=11:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000015-000016-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000015-000016-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000015-000016-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000013-000016-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000013-000016-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000013-000016-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000030-000068-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000030-000068-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000030-000068-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000002-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000002-000001-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000002-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000005-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000005-000002-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000005-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000014-000016-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000014-000016-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000014-000016-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000016-000082-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000016-000082-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000016-000082-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000011-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000011-000002-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000011-000002-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000008-000002-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000008-000002-g40-02-R.json 18 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000008-000002-g40-02-T.pkl
sleep 600