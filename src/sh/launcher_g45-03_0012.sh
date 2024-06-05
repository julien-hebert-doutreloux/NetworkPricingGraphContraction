#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:50:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000002-000082-000023-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000002-000082-000023-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000002-000082-000023-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000029-000007-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000029-000007-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000029-000007-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000002-000118-000004-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000002-000118-000004-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000002-000118-000004-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000034-000007-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000034-000007-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000034-000007-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000026-000050-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000026-000050-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000026-000050-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000010-000050-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000010-000050-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000010-000050-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000003-000015-000022-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000003-000015-000022-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000003-000015-000022-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000090-000005-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000090-000005-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000090-000005-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000002-000101-000032-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000002-000101-000032-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000002-000101-000032-g45-03-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-03/000001-000111-000040-g45-03-P.pkl ./data/generated/problems/paper/g45-03/000001-000111-000040-g45-03-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-03-P.json ./data/generated/problems/paper/g45-03/000001-000111-000040-g45-03-T.pkl
sleep 600