#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000016-000099-h35-04.sh
sbatch ./src/sh/000001-000008-000032-h35-04.sh
sbatch ./src/sh/000001-000006-000019-h35-04.sh
sbatch ./src/sh/000001-000018-000099-h35-04.sh
sbatch ./src/sh/000001-000012-000097-h35-04.sh
sbatch ./src/sh/000001-000002-000014-h35-04.sh
sbatch ./src/sh/000001-000001-000019-h35-04.sh
sbatch ./src/sh/000001-000020-000097-h35-04.sh
sbatch ./src/sh/000001-000003-000005-h35-04.sh
sbatch ./src/sh/000001-000015-000099-h35-04.sh
sbatch ./src/sh/000001-000011-000035-h35-04.sh
sbatch ./src/sh/000001-000024-000087-h35-04.sh
sbatch ./src/sh/000001-000023-000087-h35-04.sh
sbatch ./src/sh/000001-000021-000092-h35-04.sh
sbatch ./src/sh/000001-000019-000099-h35-04.sh
sbatch ./src/sh/000001-000009-000032-h35-04.sh
sbatch ./src/sh/000001-000017-000099-h35-04.sh
sbatch ./src/sh/000001-000022-000096-h35-04.sh
sbatch ./src/sh/000001-000005-000005-h35-04.sh
sbatch ./src/sh/000001-000014-000099-h35-04.sh
sbatch ./src/sh/000001-000010-000033-h35-04.sh
sbatch ./src/sh/000001-000013-000099-h35-04.sh
sbatch ./src/sh/000001-000004-000019-h35-04.sh
sbatch ./src/sh/000001-000000-000014-h35-04.sh
sbatch ./src/sh/000001-000007-000014-h35-04.sh
sleep 600