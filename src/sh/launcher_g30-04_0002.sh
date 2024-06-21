#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:33:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000014-000013-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000014-000013-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000014-000013-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000034-000053-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000034-000053-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000034-000053-g30-04-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-04/000001-000020-000037-g30-04-P.pkl ./data/generated/problems/paper/g30-04/000001-000020-000037-g30-04-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-04-P.json ./data/generated/problems/paper/g30-04/000001-000020-000037-g30-04-T.pkl
sleep 600