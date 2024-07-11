#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=31:25:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000029-000098-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000029-000098-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000029-000098-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000016-000013-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000016-000013-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000016-000013-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000023-000018-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000023-000018-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000023-000018-g45-07-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g45-07/000001-000035-000053-g45-07-P.pkl ./data/generated/problems/paper/g45-07/000001-000035-000053-g45-07-R.json 105 0 ./data/generated/problems/paper/original/000000-000000-g45-07-P.json ./data/generated/problems/paper/g45-07/000001-000035-000053-g45-07-T.pkl
sleep 600