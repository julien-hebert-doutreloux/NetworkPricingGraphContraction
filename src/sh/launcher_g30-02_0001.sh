#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:35:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000003-000040-000022-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000003-000040-000022-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000003-000040-000022-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000075-000003-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000075-000003-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000075-000003-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000041-000050-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000041-000050-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000041-000050-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000003-000043-000020-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000003-000043-000020-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000003-000043-000020-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000001-000058-000005-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000001-000058-000005-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000001-000058-000005-g30-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-02/000002-000069-000051-g30-02-P.pkl ./data/generated/problems/paper/g30-02/000002-000069-000051-g30-02-R.json 200 ./data/generated/problems/paper/original/000000-000000-g30-02-P.json ./data/generated/problems/paper/g30-02/000002-000069-000051-g30-02-T.pkl
sleep 600