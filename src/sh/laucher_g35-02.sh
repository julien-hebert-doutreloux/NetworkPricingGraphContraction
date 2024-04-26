#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000000-000002-g35-02.sh
sbatch ./src/sh/000001-000015-000062-g35-02.sh
sbatch ./src/sh/000001-000004-000085-g35-02.sh
sbatch ./src/sh/000001-000003-000002-g35-02.sh
sbatch ./src/sh/000001-000008-000098-g35-02.sh
sbatch ./src/sh/000001-000013-000073-g35-02.sh
sbatch ./src/sh/000001-000005-000096-g35-02.sh
sbatch ./src/sh/000001-000006-000098-g35-02.sh
sbatch ./src/sh/000001-000011-000097-g35-02.sh
sbatch ./src/sh/000001-000007-000097-g35-02.sh
sbatch ./src/sh/000001-000010-000098-g35-02.sh
sbatch ./src/sh/000001-000016-000059-g35-02.sh
sbatch ./src/sh/000001-000009-000097-g35-02.sh
sbatch ./src/sh/000001-000001-000002-g35-02.sh
sbatch ./src/sh/000001-000014-000069-g35-02.sh
sbatch ./src/sh/000001-000012-000080-g35-02.sh
sbatch ./src/sh/000001-000002-000002-g35-02.sh
sleep 600