#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:11:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000002-000074-000018-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000002-000074-000018-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000002-000074-000018-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000096-000021-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000096-000021-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000096-000021-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000047-000023-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000047-000023-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000047-000023-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000071-000050-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000071-000050-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000071-000050-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000001-000091-000002-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000001-000091-000002-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000001-000091-000002-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000002-000011-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000002-000011-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000002-000011-g35-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-04/000003-000053-000022-g35-04-P.pkl ./data/generated/problems/paper/g35-04/000003-000053-000022-g35-04-R.json 67 ./data/generated/problems/paper/original/000000-000000-g35-04-P.json ./data/generated/problems/paper/g35-04/000003-000053-000022-g35-04-T.pkl
sleep 600