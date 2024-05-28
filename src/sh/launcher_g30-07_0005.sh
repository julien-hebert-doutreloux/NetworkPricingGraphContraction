#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=20:26:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000018-000046-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000018-000046-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000018-000046-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000007-000024-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000007-000024-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000007-000024-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000000-000001-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000000-000001-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000000-000001-g30-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-07/000001-000021-000049-g30-07-P.pkl ./data/generated/problems/paper/g30-07/000001-000021-000049-g30-07-R.json 42 ./data/generated/problems/paper/original/000000-000000-g30-07-P.json ./data/generated/problems/paper/g30-07/000001-000021-000049-g30-07-T.pkl
sleep 600