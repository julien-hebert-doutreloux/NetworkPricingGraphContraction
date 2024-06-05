#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:24:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000003-000020-000007-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000003-000020-000007-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000003-000020-000007-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000071-000003-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000071-000003-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000071-000003-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000102-000041-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000102-000041-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000102-000041-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000080-000050-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000080-000050-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000080-000050-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000095-000014-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000095-000014-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000095-000014-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000002-000038-000051-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000002-000038-000051-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000002-000038-000051-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000002-000008-000034-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000002-000008-000034-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000002-000008-000034-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000036-000003-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000036-000003-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000036-000003-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000062-000003-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000062-000003-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000062-000003-g30-04-T.pkl
sleep 600