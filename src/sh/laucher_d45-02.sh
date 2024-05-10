#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000016-000099-d45-02.sh
sbatch ./src/sh/000001-000006-000097-d45-02.sh
sbatch ./src/sh/000001-000018-000099-d45-02.sh
sbatch ./src/sh/000001-000000-000058-d45-02.sh
sbatch ./src/sh/000001-000002-000094-d45-02.sh
sbatch ./src/sh/000001-000007-000084-d45-02.sh
sbatch ./src/sh/000001-000015-000099-d45-02.sh
sbatch ./src/sh/000001-000020-000099-d45-02.sh
sbatch ./src/sh/000001-000024-000095-d45-02.sh
sbatch ./src/sh/000001-000010-000050-d45-02.sh
sbatch ./src/sh/000001-000023-000096-d45-02.sh
sbatch ./src/sh/000001-000025-000099-d45-02.sh
sbatch ./src/sh/000001-000008-000057-d45-02.sh
sbatch ./src/sh/000001-000004-000098-d45-02.sh
sbatch ./src/sh/000001-000019-000099-d45-02.sh
sbatch ./src/sh/000001-000009-000063-d45-02.sh
sbatch ./src/sh/000001-000017-000099-d45-02.sh
sbatch ./src/sh/000001-000022-000097-d45-02.sh
sbatch ./src/sh/000001-000001-000083-d45-02.sh
sbatch ./src/sh/000001-000021-000099-d45-02.sh
sbatch ./src/sh/000001-000011-000051-d45-02.sh
sbatch ./src/sh/000001-000005-000089-d45-02.sh
sbatch ./src/sh/000001-000014-000099-d45-02.sh
sbatch ./src/sh/000001-000012-000059-d45-02.sh
sbatch ./src/sh/000001-000003-000096-d45-02.sh
sbatch ./src/sh/000001-000013-000099-d45-02.sh
sleep 600