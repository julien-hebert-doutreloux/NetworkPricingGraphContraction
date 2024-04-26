#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:10:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load julia
module load gurobi
sbatch ./src/sh/000001-000006-000098-g40-02.sh
sbatch ./src/sh/000001-000009-000081-g40-02.sh
sbatch ./src/sh/000001-000003-000002-g40-02.sh
sbatch ./src/sh/000001-000005-000093-g40-02.sh
sbatch ./src/sh/000001-000004-000073-g40-02.sh
sbatch ./src/sh/000001-000012-000060-g40-02.sh
sbatch ./src/sh/000001-000010-000087-g40-02.sh
sbatch ./src/sh/000001-000000-000002-g40-02.sh
sbatch ./src/sh/000001-000008-000093-g40-02.sh
sbatch ./src/sh/000001-000002-000002-g40-02.sh
sbatch ./src/sh/000001-000011-000079-g40-02.sh
sbatch ./src/sh/000001-000007-000099-g40-02.sh
sbatch ./src/sh/000001-000016-000054-g40-02.sh
sbatch ./src/sh/000001-000001-000002-g40-02.sh
sbatch ./src/sh/000001-000013-000065-g40-02.sh
sbatch ./src/sh/000001-000014-000064-g40-02.sh
sbatch ./src/sh/000001-000015-000056-g40-02.sh
sleep 600