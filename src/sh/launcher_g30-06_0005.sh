#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:15:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000029-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000029-000007-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000029-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000031-000007-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000031-000007-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000031-000007-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000008-000095-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000008-000095-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000008-000095-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000019-000072-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000019-000072-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000019-000072-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000005-000078-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000005-000078-g30-06-R.json 57 0 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000005-000078-g30-06-T.pkl
sleep 600