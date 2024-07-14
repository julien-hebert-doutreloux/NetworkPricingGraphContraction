#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=45:59:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000014-000013-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000014-000013-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000014-000013-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000019-000014-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000019-000014-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000019-000014-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000004-000005-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000004-000005-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000004-000005-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000029-000094-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000029-000094-g30-02-R.json 200 2 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000029-000094-g30-02-T.pkl
sleep 600