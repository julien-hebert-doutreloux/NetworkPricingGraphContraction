#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000021-000099-d30-06.sh
sbatch ./src/sh/000001-000022-000096-d30-06.sh
sbatch ./src/sh/000001-000009-000045-d30-06.sh
sbatch ./src/sh/000001-000007-000014-d30-06.sh
sbatch ./src/sh/000001-000004-000018-d30-06.sh
sbatch ./src/sh/000001-000005-000005-d30-06.sh
sbatch ./src/sh/000001-000014-000099-d30-06.sh
sbatch ./src/sh/000001-000010-000033-d30-06.sh
sbatch ./src/sh/000001-000002-000056-d30-06.sh
sbatch ./src/sh/000001-000013-000099-d30-06.sh
sbatch ./src/sh/000001-000008-000050-d30-06.sh
sbatch ./src/sh/000001-000003-000038-d30-06.sh
sbatch ./src/sh/000001-000000-000035-d30-06.sh
sbatch ./src/sh/000001-000017-000099-d30-06.sh
sbatch ./src/sh/000001-000019-000099-d30-06.sh
sbatch ./src/sh/000001-000012-000099-d30-06.sh
sbatch ./src/sh/000001-000015-000099-d30-06.sh
sbatch ./src/sh/000001-000023-000092-d30-06.sh
sbatch ./src/sh/000001-000020-000099-d30-06.sh
sbatch ./src/sh/000001-000011-000036-d30-06.sh
sbatch ./src/sh/000001-000024-000095-d30-06.sh
sbatch ./src/sh/000001-000018-000099-d30-06.sh
sbatch ./src/sh/000001-000006-000019-d30-06.sh
sbatch ./src/sh/000001-000001-000060-d30-06.sh
sbatch ./src/sh/000001-000016-000099-d30-06.sh
sleep 600