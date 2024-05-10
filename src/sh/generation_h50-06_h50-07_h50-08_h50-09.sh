#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=00:30:00
#SBATCH --output=/dev/null
#SBATCH --partition=optimum
module load python/3.12.0
source venev/bin/activate
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-05.json' --directory_npp './data/generated/problems/paper/h50-05' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/h50-06
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-06.json' --directory_npp './data/generated/problems/paper/h50-06' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/h50-07
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-07.json' --directory_npp './data/generated/problems/paper/h50-07' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/h50-08
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 7 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 3 --m 5 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 4 --max_sl 4 --m 3 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 5 --max_sl 5 --m 2 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 5 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-08.json' --directory_npp './data/generated/problems/paper/h50-08' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 3 --max_sl 0 --m 0 --H1 1 --H2 1 --H3 1 --H4 0 --max_attemp 1500 --batch_size 100
mkdir ./data/generated/problems/paper/h50-09
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-09.json' --directory_npp './data/generated/problems/paper/h50-09' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 2 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-09.json' --directory_npp './data/generated/problems/paper/h50-09' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 3 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
python src/python/main.py option5 5-1 --file_npp './data/from_github/problems/paper/h50-09.json' --directory_npp './data/generated/problems/paper/h50-09' --directory_original './data/generated/problems/paper/original' --n 100 --min_sl 2 --max_sl 2 --m 4 --H1 1 --H2 1 --H3 1 --H4 1 --max_attemp 1500 --batch_size 100
sleep 600