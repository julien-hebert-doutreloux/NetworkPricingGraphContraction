#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000018-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000018-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000018-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000064-000041-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000064-000041-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000064-000041-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000053-000020-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000053-000020-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000053-000020-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000051-000020-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000051-000020-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000051-000020-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000059-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000059-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000059-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000034-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000034-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000034-000050-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000060-000036-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000060-000036-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000060-000036-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000047-000021-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000047-000021-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000047-000021-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000002-000069-000051-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000002-000069-000051-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000002-000069-000051-g35-09-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-09/000001-000012-000050-g35-09-P.pkl ./data/generated/problems/paper/g35-09/000001-000012-000050-g35-09-R.json 28 ./data/generated/problems/paper/original/000000-000000-g35-09-P.json ./data/generated/problems/paper/g35-09/000001-000012-000050-g35-09-T.pkl
sleep 600