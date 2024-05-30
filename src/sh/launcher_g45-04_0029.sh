#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=17:52:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000071-000013-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000071-000013-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000071-000013-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000072-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000072-000014-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000072-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000001-000073-000014-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000001-000073-000014-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000001-000073-000014-g45-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-04/000002-000060-000020-g45-04-P.pkl ./data/generated/problems/paper/g45-04/000002-000060-000020-g45-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g45-04-P.json ./data/generated/problems/paper/g45-04/000002-000060-000020-g45-04-T.pkl
sleep 600