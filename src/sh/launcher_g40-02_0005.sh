#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:29:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000011-000046-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000011-000046-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000011-000046-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000005-000028-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000005-000028-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000005-000028-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000029-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000029-000001-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000029-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000010-000045-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000010-000045-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000010-000045-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000027-000001-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000027-000001-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000027-000001-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000013-000047-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000013-000047-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000013-000047-g40-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g40-02/000001-000003-000014-g40-02-P.pkl ./data/generated/problems/paper/g40-02/000001-000003-000014-g40-02-R.json 20 ./data/generated/problems/paper/original/000000-000000-g40-02-P.json ./data/generated/problems/paper/g40-02/000001-000003-000014-g40-02-T.pkl
sleep 600