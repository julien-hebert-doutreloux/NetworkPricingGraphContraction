#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:42:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000002-000033-000051-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000002-000033-000051-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000002-000033-000051-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000003-000082-000012-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000003-000082-000012-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000003-000082-000012-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000061-000002-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000061-000002-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000061-000002-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000001-000047-000002-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000001-000047-000002-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000001-000047-000002-g30-05-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-05/000002-000093-000051-g30-05-P.pkl ./data/generated/problems/paper/g30-05/000002-000093-000051-g30-05-R.json 89 ./data/generated/problems/paper/original/000000-000000-g30-05-P.json ./data/generated/problems/paper/g30-05/000002-000093-000051-g30-05-T.pkl
sleep 600