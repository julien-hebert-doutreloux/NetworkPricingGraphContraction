#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G
#SBATCH --time=15:14:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000059-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000059-000002-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000059-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000020-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000020-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000020-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000043-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000043-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000043-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000000-000001-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000000-000001-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000000-000001-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000003-000023-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000003-000023-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000003-000023-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000017-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000017-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000017-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000095-000016-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000095-000016-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000095-000016-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000086-000018-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000086-000018-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000086-000018-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000087-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000087-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000087-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000077-000034-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000077-000034-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000077-000034-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000014-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000014-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000014-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000018-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000018-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000018-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000072-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000072-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000072-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000067-000022-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000067-000022-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000067-000022-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000003-000034-000022-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000003-000034-000022-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000003-000034-000022-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000002-000051-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000002-000051-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000002-000051-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000070-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000070-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000070-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000056-000002-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000056-000002-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000056-000002-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000090-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000090-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000090-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000013-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000013-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000013-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000001-000084-000050-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000001-000084-000050-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000001-000084-000050-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000050-000023-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000050-000023-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000050-000023-g30-10-T.pkl
julia src/julia/script.jl ./data/generated/problems/paper/g30-10/000002-000040-000027-g30-10-P.pkl ./data/generated/problems/paper/g30-10/000002-000040-000027-g30-10-R.json 11 ./data/generated/problems/paper/original/000000-000000-g30-10-P.json ./data/generated/problems/paper/g30-10/000002-000040-000027-g30-10-T.pkl
sleep 600