#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000010-000098-g50-02.sh
sbatch ./src/sh/000001-000009-000094-g50-02.sh
sbatch ./src/sh/000001-000001-000002-g50-02.sh
sbatch ./src/sh/000001-000015-000073-g50-02.sh
sbatch ./src/sh/000001-000012-000085-g50-02.sh
sbatch ./src/sh/000001-000007-000099-g50-02.sh
sbatch ./src/sh/000001-000016-000079-g50-02.sh
sbatch ./src/sh/000001-000002-000002-g50-02.sh
sbatch ./src/sh/000001-000000-000002-g50-02.sh
sbatch ./src/sh/000001-000014-000078-g50-02.sh
sbatch ./src/sh/000001-000004-000079-g50-02.sh
sbatch ./src/sh/000001-000003-000002-g50-02.sh
sbatch ./src/sh/000001-000006-000099-g50-02.sh
sbatch ./src/sh/000001-000008-000099-g50-02.sh
sbatch ./src/sh/000001-000013-000072-g50-02.sh
sbatch ./src/sh/000001-000011-000095-g50-02.sh
sbatch ./src/sh/000001-000005-000097-g50-02.sh
sleep 600