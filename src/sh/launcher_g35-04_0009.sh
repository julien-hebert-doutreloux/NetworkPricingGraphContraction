#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:20:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000081-000013-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000081-000013-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000081-000013-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000090-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000090-000002-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000090-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000011-000051-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000011-000051-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000011-000051-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000005-000010-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000005-000010-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000005-000010-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000086-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000086-000002-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000086-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000013-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000013-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000013-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000021-000017-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000021-000017-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000021-000017-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000062-000023-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000062-000023-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000062-000023-g35-04-T.pkl
sleep 600