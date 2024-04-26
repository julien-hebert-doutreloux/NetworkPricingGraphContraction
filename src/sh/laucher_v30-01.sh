#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000011-000076-v30-01.sh
sbatch ./src/sh/000001-000003-000099-v30-01.sh
sbatch ./src/sh/000001-000004-000099-v30-01.sh
sbatch ./src/sh/000001-000000-000097-v30-01.sh
sbatch ./src/sh/000001-000007-000099-v30-01.sh
sbatch ./src/sh/000001-000012-000085-v30-01.sh
sbatch ./src/sh/000001-000005-000099-v30-01.sh
sbatch ./src/sh/000001-000009-000089-v30-01.sh
sbatch ./src/sh/000001-000002-000099-v30-01.sh
sbatch ./src/sh/000001-000010-000085-v30-01.sh
sbatch ./src/sh/000001-000008-000093-v30-01.sh
sbatch ./src/sh/000001-000001-000099-v30-01.sh
sbatch ./src/sh/000001-000006-000099-v30-01.sh
sleep 600