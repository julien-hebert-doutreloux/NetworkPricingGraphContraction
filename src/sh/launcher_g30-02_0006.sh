#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:36:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000083-000024-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000083-000024-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000083-000024-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000015-000045-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000015-000045-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000015-000045-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000064-000051-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000064-000051-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000064-000051-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000024-000051-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000024-000051-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000024-000051-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000011-000048-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000011-000048-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000011-000048-g30-02-T.pkl
sleep 600