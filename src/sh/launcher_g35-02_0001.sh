#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=27:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000025-000070-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000025-000070-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000025-000070-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000018-000079-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000018-000079-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000018-000079-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000015-000022-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000015-000022-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000015-000022-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000013-000023-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000013-000023-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000013-000023-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000010-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000010-000002-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000010-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000019-000075-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000019-000075-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000019-000075-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000007-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000007-000002-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000007-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000002-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000002-000001-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000002-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000008-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000008-000002-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000008-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000009-000002-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000009-000002-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000009-000002-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000001-000001-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000001-000001-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000001-000001-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000021-000095-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000021-000095-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000021-000095-g35-02-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g35-02/000001-000029-000073-g35-02-P.pkl ./data/generated/problems/paper/g35-02/000001-000029-000073-g35-02-R.json 24 ./data/generated/problems/paper/original/000000-000000-g35-02-P.json ./data/generated/problems/paper/g35-02/000001-000029-000073-g35-02-T.pkl
sleep 600