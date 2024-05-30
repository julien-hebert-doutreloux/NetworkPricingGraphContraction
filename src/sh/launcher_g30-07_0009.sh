#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:41:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000049-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000049-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000049-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000029-000001-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000029-000001-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000029-000001-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000040-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000040-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000040-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000072-000021-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000072-000021-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000072-000021-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000030-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000030-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000030-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000003-000023-000019-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000003-000023-000019-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000003-000023-000019-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000082-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000082-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000082-000050-g30-07-T.pkl
sleep 600