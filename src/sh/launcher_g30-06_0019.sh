#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:16:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000002-000077-000051-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000002-000077-000051-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000002-000077-000051-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000053-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000053-000003-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000053-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000069-000003-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000069-000003-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000069-000003-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000003-000087-000022-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000003-000087-000022-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000003-000087-000022-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000001-000031-000031-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000001-000031-000031-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000001-000031-000031-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000003-000052-000018-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000003-000052-000018-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000003-000052-000018-g30-06-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-06/000003-000099-000020-g30-06-P.pkl ./data/generated/problems/paper/g30-06/000003-000099-000020-g30-06-R.json 67 ./data/generated/problems/paper/original/000000-000000-g30-06-P.json ./data/generated/problems/paper/g30-06/000003-000099-000020-g30-06-T.pkl
sleep 600