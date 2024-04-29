#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/special_000001-000004-000099-d35-08.sh
sbatch ./src/sh/special_000001-000001-000090-d35-08.sh
sbatch ./src/sh/special_000001-000009-000063-d35-08.sh
sbatch ./src/sh/special_000001-000006-000099-d35-08.sh
sbatch ./src/sh/special_000001-000013-000099-d35-08.sh
sbatch ./src/sh/special_000001-000007-000094-d35-08.sh
sbatch ./src/sh/special_000001-000005-000093-d35-08.sh
sbatch ./src/sh/special_000001-000008-000069-d35-08.sh
sbatch ./src/sh/special_000001-000002-000098-d35-08.sh
sbatch ./src/sh/special_000001-000003-000098-d35-08.sh
sbatch ./src/sh/special_000001-000016-000099-d35-08.sh
sbatch ./src/sh/special_000001-000010-000060-d35-08.sh
sbatch ./src/sh/special_000001-000011-000060-d35-08.sh
sbatch ./src/sh/special_000001-000012-000063-d35-08.sh
sleep 600