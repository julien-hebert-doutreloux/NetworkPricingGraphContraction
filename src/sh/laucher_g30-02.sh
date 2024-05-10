#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000002-000003-g30-02.sh
sbatch ./src/sh/000001-000010-000096-g30-02.sh
sbatch ./src/sh/000001-000007-000014-g30-02.sh
sbatch ./src/sh/000001-000013-000099-g30-02.sh
sbatch ./src/sh/000001-000014-000093-g30-02.sh
sbatch ./src/sh/000001-000001-000003-g30-02.sh
sbatch ./src/sh/000001-000008-000014-g30-02.sh
sbatch ./src/sh/000001-000004-000005-g30-02.sh
sbatch ./src/sh/000001-000012-000098-g30-02.sh
sbatch ./src/sh/000001-000015-000099-g30-02.sh
sbatch ./src/sh/000001-000006-000014-g30-02.sh
sbatch ./src/sh/000001-000016-000096-g30-02.sh
sbatch ./src/sh/000001-000003-000003-g30-02.sh
sbatch ./src/sh/000001-000009-000082-g30-02.sh
sbatch ./src/sh/000001-000005-000014-g30-02.sh
sbatch ./src/sh/000001-000011-000098-g30-02.sh
sbatch ./src/sh/000001-000000-000005-g30-02.sh
sbatch ./src/sh/000001-000017-000074-g30-02.sh
sleep 600