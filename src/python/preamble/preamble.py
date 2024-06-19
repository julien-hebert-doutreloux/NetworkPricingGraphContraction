from itertools import groupby, combinations, chain, compress, islice
from more_itertools import set_partitions, partitions
import matplotlib.pyplot as plt
from tabulate import tabulate
from matplotlib import cm
import concurrent.futures
import networkx as nx
from tqdm import tqdm
import seaborn as sns
import pandas as pd
import numpy as np
import subprocess
import threading
import argparse
import textwrap
import logging
import random
import pickle
import config #<---- config.py where every parameters are
import json
import time
import sys
import os
import re


def preamble_sh(cpu, ram, h, m, s, partition='optimum', *args):

            # h,m,s must be in forme '00' digit in str
            # args exemple 1
            # "module load python/3.12.0"
            # "source venev/bin/activate"
            # args exemple 2
            # "module load julia"
            # "module load gurobi"
            return [
                    "#!/bin/bash",
                    f"#SBATCH --cpus-per-task={cpu}",
                    f"#SBATCH --mem={ram}G",
                    f"#SBATCH --time={h}:{m}:{s}",
                    "#SBATCH --output=/dev/null",
                    f"#SBATCH --partition={partition}",
                    ] + list(args)
