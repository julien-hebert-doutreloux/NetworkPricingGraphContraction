#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:12:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000018-000049-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000018-000049-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000018-000049-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000002-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000002-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000002-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000027-000049-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000027-000049-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000027-000049-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000001-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000001-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000001-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000003-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000003-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000003-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000000-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000000-000001-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000000-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000010-000020-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000010-000020-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000010-000020-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000008-000018-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000008-000018-g35-02-R.json 27 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000008-000018-g35-02-T.pkl
sleep 600