#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=10:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000013-000028-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000013-000028-g30-10-R.json 12 0 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000013-000028-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000015-000022-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000015-000022-g30-10-R.json 12 0 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000015-000022-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000019-000073-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000019-000073-g30-10-R.json 12 0 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000019-000073-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000020-000098-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000020-000098-g30-10-R.json 12 0 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000020-000098-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000010-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000010-000002-g30-10-R.json 12 0 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000010-000002-g30-10-T.pkl
sleep 600