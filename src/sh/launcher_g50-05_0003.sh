#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:38:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000002-000023-000047-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000002-000023-000047-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000002-000023-000047-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000087-000050-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000087-000050-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000087-000050-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000000-000002-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000000-000002-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000000-000002-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000062-000001-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000062-000001-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000062-000001-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000001-000059-000050-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000001-000059-000050-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000001-000059-000050-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000002-000090-000031-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000002-000090-000031-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000002-000090-000031-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000002-000088-000019-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000002-000088-000019-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000002-000088-000019-g50-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g50-05/000002-000080-000027-g50-05-P.pkl ./data/generated/problems/paper/g50-05/000002-000080-000027-g50-05-R.json 200 ./data/generated/problems/paper/original/000000-000000-g50-05-P.json ./data/generated/problems/paper/g50-05/000002-000080-000027-g50-05-T.pkl
sleep 600