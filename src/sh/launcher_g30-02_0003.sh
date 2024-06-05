#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000044-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000044-000003-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000044-000003-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000013-000039-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000013-000039-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000013-000039-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000087-000030-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000087-000030-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000087-000030-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000048-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000048-000003-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000048-000003-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000102-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000102-000014-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000102-000014-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000101-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000101-000014-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000101-000014-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000021-000051-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000021-000051-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000021-000051-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000100-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000100-000014-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000100-000014-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000054-000050-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000054-000050-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000054-000050-g30-02-T.pkl
sleep 600