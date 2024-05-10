#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000000-000053-h35-10.sh
sbatch ./src/sh/000001-000009-000050-h35-10.sh
sbatch ./src/sh/000001-000006-000096-h35-10.sh
sbatch ./src/sh/000001-000016-000099-h35-10.sh
sbatch ./src/sh/000001-000018-000099-h35-10.sh
sbatch ./src/sh/000001-000020-000099-h35-10.sh
sbatch ./src/sh/000001-000002-000091-h35-10.sh
sbatch ./src/sh/000001-000023-000091-h35-10.sh
sbatch ./src/sh/000001-000007-000085-h35-10.sh
sbatch ./src/sh/000001-000015-000099-h35-10.sh
sbatch ./src/sh/000001-000019-000099-h35-10.sh
sbatch ./src/sh/000001-000017-000099-h35-10.sh
sbatch ./src/sh/000001-000008-000050-h35-10.sh
sbatch ./src/sh/000001-000001-000079-h35-10.sh
sbatch ./src/sh/000001-000024-000086-h35-10.sh
sbatch ./src/sh/000001-000012-000052-h35-10.sh
sbatch ./src/sh/000001-000021-000096-h35-10.sh
sbatch ./src/sh/000001-000014-000099-h35-10.sh
sbatch ./src/sh/000001-000010-000060-h35-10.sh
sbatch ./src/sh/000001-000025-000090-h35-10.sh
sbatch ./src/sh/000001-000013-000099-h35-10.sh
sbatch ./src/sh/000001-000004-000095-h35-10.sh
sbatch ./src/sh/000001-000003-000095-h35-10.sh
sbatch ./src/sh/000001-000022-000092-h35-10.sh
sbatch ./src/sh/000001-000011-000052-h35-10.sh
sbatch ./src/sh/000001-000005-000078-h35-10.sh
sleep 600