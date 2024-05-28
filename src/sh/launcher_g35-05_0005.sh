#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000021-000049-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000021-000049-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000021-000049-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000031-000043-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000031-000043-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000031-000043-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000027-000049-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000027-000049-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000027-000049-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000024-000047-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000024-000047-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000024-000047-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000002-000001-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000002-000001-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000002-000001-g35-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-05/000001-000007-000021-g35-05-P.pkl ./data/generated/problems/paper/g35-05/000001-000007-000021-g35-05-R.json 18 ./data/generated/problems/paper/original/000000-000000-g35-05-P.json ./data/generated/problems/paper/g35-05/000001-000007-000021-g35-05-T.pkl
sleep 600