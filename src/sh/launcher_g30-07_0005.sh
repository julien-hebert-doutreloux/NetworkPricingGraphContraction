#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=21:41:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000003-000044-000017-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000003-000044-000017-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000003-000044-000017-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000067-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000067-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000067-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000054-000050-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000054-000050-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000054-000050-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000003-000050-000023-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000003-000050-000023-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000003-000050-000023-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000003-000059-000022-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000003-000059-000022-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000003-000059-000022-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000003-000053-000023-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000003-000053-000023-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000003-000053-000023-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000011-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000011-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000011-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000065-000002-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000065-000002-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000065-000002-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000020-000001-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000020-000001-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000020-000001-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000019-000001-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000019-000001-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000019-000001-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000003-000038-000022-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000003-000038-000022-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000003-000038-000022-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000087-000019-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000087-000019-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000087-000019-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000007-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000007-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000007-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000049-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000049-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000049-000051-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000029-000001-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000029-000001-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000029-000001-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000002-000040-000051-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000002-000040-000051-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000002-000040-000051-g30-07-T.pkl
sleep 600