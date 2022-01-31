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

# Purpose of this is to rename all the photos and json files associated with them
# This allowed an easier time to examine individual photos and their json files closely
# It's easier to find photo 2665 and it's corresponding json file compared to photo-generated-614715-364644

i = 0
print(i)
directory = 'generated.photos'

for filename in os.listdir(directory):
    f = os.path.join(directory, filename)
    if i != 0:
        os.rename(rename, renamed)
        print(rename, renamed)
    if os.path.isfile(f):
        with open(f) as file:

            rename = str(f)
            renamed = str(directory + '\\' + str(i) + '.jpg')
            print(renamed)
            i += 1
