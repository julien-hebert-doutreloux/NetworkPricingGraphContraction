#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=05:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000010-000024-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000010-000024-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000010-000024-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000029-000049-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000029-000049-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000029-000049-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000016-000044-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000016-000044-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000016-000044-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000028-000049-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000028-000049-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000028-000049-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000015-000044-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000015-000044-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000015-000044-g30-10-T.pkl
sleep 600