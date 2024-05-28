#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:51:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000014-000041-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000014-000041-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000014-000041-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000003-000001-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000003-000001-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000003-000001-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000013-000043-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000013-000043-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000013-000043-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000000-000001-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000000-000001-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000000-000001-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000008-000021-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000008-000021-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000008-000021-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000005-000002-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000005-000002-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000005-000002-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000020-000049-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000020-000049-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000020-000049-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000015-000047-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000015-000047-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000015-000047-g35-05-T.pkl
sleep 600