#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000008-000071-g30-08.sh
sbatch ./src/sh/000001-000004-000099-g30-08.sh
sbatch ./src/sh/000001-000003-000099-g30-08.sh
sbatch ./src/sh/000001-000009-000073-g30-08.sh
sbatch ./src/sh/000001-000005-000097-g30-08.sh
sbatch ./src/sh/000001-000006-000099-g30-08.sh
sbatch ./src/sh/000001-000000-000086-g30-08.sh
sbatch ./src/sh/000001-000007-000082-g30-08.sh
sbatch ./src/sh/000001-000011-000067-g30-08.sh
sbatch ./src/sh/000001-000002-000099-g30-08.sh
sbatch ./src/sh/000001-000010-000073-g30-08.sh
sbatch ./src/sh/000001-000001-000097-g30-08.sh
sbatch ./src/sh/000001-000012-000065-g30-08.sh
sleep 600