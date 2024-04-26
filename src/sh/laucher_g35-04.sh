#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000009-000095-g35-04.sh
sbatch ./src/sh/000001-000010-000099-g35-04.sh
sbatch ./src/sh/000001-000001-000002-g35-04.sh
sbatch ./src/sh/000001-000007-000099-g35-04.sh
sbatch ./src/sh/000001-000002-000002-g35-04.sh
sbatch ./src/sh/000001-000015-000076-g35-04.sh
sbatch ./src/sh/000001-000000-000002-g35-04.sh
sbatch ./src/sh/000001-000012-000067-g35-04.sh
sbatch ./src/sh/000001-000004-000087-g35-04.sh
sbatch ./src/sh/000001-000016-000066-g35-04.sh
sbatch ./src/sh/000001-000003-000002-g35-04.sh
sbatch ./src/sh/000001-000006-000098-g35-04.sh
sbatch ./src/sh/000001-000005-000094-g35-04.sh
sbatch ./src/sh/000001-000011-000096-g35-04.sh
sbatch ./src/sh/000001-000013-000070-g35-04.sh
sbatch ./src/sh/000001-000008-000099-g35-04.sh
sbatch ./src/sh/000001-000014-000072-g35-04.sh
sleep 600