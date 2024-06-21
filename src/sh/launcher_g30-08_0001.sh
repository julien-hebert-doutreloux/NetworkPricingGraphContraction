#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000004-000087-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000004-000087-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000004-000087-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000016-000070-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000016-000070-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000016-000070-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000008-000097-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000008-000097-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000008-000097-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000010-000093-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000010-000093-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000010-000093-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000017-000078-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000017-000078-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000017-000078-g30-08-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-08/000001-000013-000069-g30-08-P.pkl ./data/generated/problems/paper/g30-08/000001-000013-000069-g30-08-R.json 30 ./data/generated/problems/paper/original/000000-000000-g30-08-P.json ./data/generated/problems/paper/g30-08/000001-000013-000069-g30-08-T.pkl
sleep 600