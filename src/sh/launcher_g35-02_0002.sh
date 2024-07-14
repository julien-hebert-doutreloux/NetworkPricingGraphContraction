#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=25:58:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000029-000073-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000029-000073-g35-02-R.json 24 3 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000029-000073-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000028-000071-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000028-000071-g35-02-R.json 24 3 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000028-000071-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000024-000068-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000024-000068-g35-02-R.json 24 3 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000024-000068-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000027-000068-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000027-000068-g35-02-R.json 24 3 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000027-000068-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000011-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000011-000002-g35-02-R.json 24 3 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000011-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000003-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000003-000001-g35-02-R.json 24 3 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000003-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000020-000096-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000020-000096-g35-02-R.json 24 3 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000020-000096-g35-02-T.pkl
sleep 600