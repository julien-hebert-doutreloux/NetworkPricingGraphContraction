#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000009-000079-g30-09.sh
sbatch ./src/sh/000001-000002-000099-g30-09.sh
sbatch ./src/sh/000001-000005-000098-g30-09.sh
sbatch ./src/sh/000001-000010-000079-g30-09.sh
sbatch ./src/sh/000001-000011-000066-g30-09.sh
sbatch ./src/sh/000001-000006-000099-g30-09.sh
sbatch ./src/sh/000001-000001-000098-g30-09.sh
sbatch ./src/sh/000001-000000-000086-g30-09.sh
sbatch ./src/sh/000001-000004-000099-g30-09.sh
sbatch ./src/sh/000001-000003-000099-g30-09.sh
sbatch ./src/sh/000001-000007-000091-g30-09.sh
sbatch ./src/sh/000001-000012-000070-g30-09.sh
sbatch ./src/sh/000001-000008-000073-g30-09.sh
sleep 600