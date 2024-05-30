#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:40:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000078-000001-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000078-000001-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000078-000001-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000034-000040-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000034-000040-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000034-000040-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000022-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000022-000002-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000022-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000003-000062-000021-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000003-000062-000021-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000003-000062-000021-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000002-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000002-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000002-000050-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000029-000002-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000029-000002-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000029-000002-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000070-000051-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000070-000051-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000070-000051-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000000-000050-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000000-000050-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000000-000050-g35-10-T.pkl
sleep 600