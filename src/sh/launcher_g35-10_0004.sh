#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=16:34:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000003-000074-000022-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000003-000074-000022-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000003-000074-000022-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000038-000019-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000038-000019-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000038-000019-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000089-000051-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000089-000051-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000089-000051-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000040-000027-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000040-000027-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000040-000027-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000001-000082-000001-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000001-000082-000001-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000001-000082-000001-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000005-000024-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000005-000024-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000005-000024-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000003-000045-000007-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000003-000045-000007-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000003-000045-000007-g35-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-10/000002-000058-000051-g35-10-P.pkl ./data/generated/problems/paper/g35-10/000002-000058-000051-g35-10-R.json 53 ./data/generated/problems/paper/original/000000-000000-g35-10-P.json ./data/generated/problems/paper/g35-10/000002-000058-000051-g35-10-T.pkl
sleep 600