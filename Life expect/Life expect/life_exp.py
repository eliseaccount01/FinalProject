# Import libraries
import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
from sqlalchemy import create_engine
import warnings

warnings.filterwarnings('ignore')

# Load dataset
#import csv
#with open ('Life Expectancy Data.csv', 'r') as csv_file:
  #  csv_reader = csv.reader(csv_file)

    #for line in csv_reader:
     #   print(csv_reader)
le = pd.read_csv('Life Expectancy Data.csv', delimiter=',')
le.dataframeName = 'Life Expectancy Data.csv'
le.head()