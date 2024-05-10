#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000007-000014-v30-06.sh
sbatch ./src/sh/000001-000002-000003-v30-06.sh
sbatch ./src/sh/000001-000009-000096-v30-06.sh
sbatch ./src/sh/000001-000001-000003-v30-06.sh
sbatch ./src/sh/000001-000008-000013-v30-06.sh
sbatch ./src/sh/000001-000003-000003-v30-06.sh
sbatch ./src/sh/000001-000006-000014-v30-06.sh
sbatch ./src/sh/000001-000004-000005-v30-06.sh
sbatch ./src/sh/000001-000005-000013-v30-06.sh
sbatch ./src/sh/000001-000000-000005-v30-06.sh
sleep 600