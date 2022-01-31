from __future__ import absolute_import, division, print_function, unicode_literals
from sklearn.model_selection import train_test_split
from IPython.display import clear_output
from six.moves import urllib

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import tensorflow.compat.v2.feature_column as fc
import tensorflow as tf
import os
import csv
import json

df = pd.read_csv('D:/Uni Work/diss/Project/faceLandmarks/mouthCoords.csv')
df.head()

xy = df[['mouth0x', 'mouth0y', 'mouth1x', 'mouth1y', 'mouth2x', 'mouth2y', 'mouth3x', 'mouth3y', 'mouth4x', 'mouth4y',
         'mouth5x', 'mouth5y', 'mouth6x', 'mouth6y', 'mouth7x', 'mouth7y', 'mouth8x', 'mouth8y', 'mouth9x', 'mouth9y',
         'mouth10x', 'mouth10y', 'mouth11x', 'mouth11y', 'mouth12x', 'mouth12y', 'mouth13x', 'mouth13y', 'mouth14x',
         'mouth14y', 'mouth15x', 'mouth15y', 'mouth16x', 'mouth16y', 'mouth17x', 'mouth17y', 'mouth18x', 'mouth18y',
         'mouth19x', 'mouth19y', 'happiness']]
print(xy)

xy_train, xy_test = train_test_split(xy, test_size=0.2, random_state=10)

xy_train.to_csv('xyTrain.csv', index=False)
xy_test.to_csv('xyTest.csv', index=False)
