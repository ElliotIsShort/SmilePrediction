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

directory = 'generated.photos_metadata'
header = ['image', 'mouth0x', 'mouth0y', 'mouth1x', 'mouth1y', 'mouth2x', 'mouth2y', 'mouth3x', 'mouth3y', 'mouth4x',
          'mouth4y', 'mouth5x', 'mouth5y', 'mouth6x', 'mouth6y', 'mouth7x', 'mouth7y', 'mouth8x', 'mouth8y', 'mouth9x',
          'mouth9y', 'mouth10x', 'mouth10y', 'mouth11x', 'mouth11y', 'mouth12x', 'mouth12y', 'mouth13x', 'mouth13y',
          'mouth14x', 'mouth14y', 'mouth15x', 'mouth15y', 'mouth16x', 'mouth16y', 'mouth17x', 'mouth17y', 'mouth18x',
          'mouth18y', 'mouth19x', 'mouth19y', 'happiness']

with open('data.csv', 'w', encoding='UTF8', newline="") as f:
    writer = csv.writer(f)
    writer.writerow(header)

    for filename in os.listdir(directory):
        f = os.path.join(directory, filename)
        if os.path.isfile(f):
            print(f)
            with open(f) as file:
                excel = json.load(file)

            image = excel['image']
            mouth = excel['faceLandmarks']['mouth']
            happiness = excel['faceAttributes']['emotion']['happiness']
            gender = excel['faceAttributes']['gender']
            ethnicity = excel['faceAttributes']['ethnicity']
            age = excel['faceAttributes']['age']

            # This sections splits the x,y coordinates that make up the 'Mouth' attribute into individual numbers in a csv file, this way our code can use it individually
            mouthArray = [0] * 40
            i = 0
            x = 0
            while i < 40:
                if (i % 2) == 0:
                    mouthString = str(mouth[x])
                    mouthFormatX = mouthString[6:9]
                    mouthFormatY = mouthString[16:19]
                    mouthArray[i] = int(mouthFormatX)
                    x += 1
                    print("this is x: " + str(mouthArray[i]))
                elif i == 0:
                    mouthString = str(mouth[x])
                    mouthFormatX = mouthString[6:9]
                    mouthFormatY = mouthString[16:19]
                    mouthArray[i] = int(mouthFormatX)
                    x += 1
                    print("this is x: " + str(mouthArray[i]))
                else:
                    mouthArray[i] = int(mouthFormatY)
                    print("this is y: " + str(mouthArray[i]))
                print(mouthFormatX)
                print(mouthFormatY)
                i += 1

            data = [0] * 42
            data[0] = image
            i = 0
            while i < 40:
                data[i + 1] = mouthArray[i]
                i += 1
            if happiness > 0.55:
                smile = 1
            else:
                smile = 0

            data[41] = smile
            print("end")
            writer.writerow(data)
            print(data)
