#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=29:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000011-000085-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000011-000085-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000011-000085-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000008-000096-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000008-000096-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000008-000096-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000013-000052-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000013-000052-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000013-000052-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000015-000061-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000015-000061-g35-10-R.json 54 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000015-000061-g35-10-T.pkl
sleep 600