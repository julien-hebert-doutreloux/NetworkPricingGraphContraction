#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000018-000096-v40-02.sh
sbatch ./src/sh/000001-000015-000099-v40-02.sh
sbatch ./src/sh/000001-000004-000005-v40-02.sh
sbatch ./src/sh/000001-000012-000099-v40-02.sh
sbatch ./src/sh/000001-000008-000014-v40-02.sh
sbatch ./src/sh/000001-000006-000013-v40-02.sh
sbatch ./src/sh/000001-000003-000003-v40-02.sh
sbatch ./src/sh/000001-000021-000084-v40-02.sh
sbatch ./src/sh/000001-000011-000099-v40-02.sh
sbatch ./src/sh/000001-000020-000091-v40-02.sh
sbatch ./src/sh/000001-000016-000098-v40-02.sh
sbatch ./src/sh/000001-000000-000005-v40-02.sh
sbatch ./src/sh/000001-000005-000013-v40-02.sh
sbatch ./src/sh/000001-000002-000003-v40-02.sh
sbatch ./src/sh/000001-000019-000093-v40-02.sh
sbatch ./src/sh/000001-000013-000099-v40-02.sh
sbatch ./src/sh/000001-000014-000099-v40-02.sh
sbatch ./src/sh/000001-000009-000099-v40-02.sh
sbatch ./src/sh/000001-000007-000014-v40-02.sh
sbatch ./src/sh/000001-000001-000003-v40-02.sh
sbatch ./src/sh/000001-000010-000099-v40-02.sh
sbatch ./src/sh/000001-000017-000098-v40-02.sh
sleep 600