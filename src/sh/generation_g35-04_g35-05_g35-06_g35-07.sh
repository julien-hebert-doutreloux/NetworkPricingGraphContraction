#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-03.json' --directory_npp './data/generated/problems/paper/g35-03' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/g35-04
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-04.json' --directory_npp './data/generated/problems/paper/g35-04' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/g35-05
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-05.json' --directory_npp './data/generated/problems/paper/g35-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/g35-06
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-06.json' --directory_npp './data/generated/problems/paper/g35-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/g35-07
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/g35-07.json' --directory_npp './data/generated/problems/paper/g35-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
sleep 600