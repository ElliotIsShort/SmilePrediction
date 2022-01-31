import sys
import os
import dlib
import glob
import csv
import json
import numpy as np
from skimage import io

predictor_path = "shape_predictor_68_face_landmarks.dat"
fakeDirectory = 'D:/Uni Work/diss/Project/generated.photos'
realDirectory = 'D:/Uni Work/diss/Real_faces'
dirHappiness = 'D:/Uni Work/diss/Project/generated.photos_metadata'
detector = dlib.get_frontal_face_detector()
predictor = dlib.shape_predictor(predictor_path)

header = ['mouth0x', 'mouth0y', 'mouth1x', 'mouth1y', 'mouth2x', 'mouth2y', 'mouth3x', 'mouth3y', 'mouth4x',
          'mouth4y', 'mouth5x', 'mouth5y', 'mouth6x', 'mouth6y', 'mouth7x', 'mouth7y', 'mouth8x', 'mouth8y', 'mouth9x',
          'mouth9y', 'mouth10x', 'mouth10y', 'mouth11x', 'mouth11y', 'mouth12x', 'mouth12y', 'mouth13x', 'mouth13y',
          'mouth14x', 'mouth14y', 'mouth15x', 'mouth15y', 'mouth16x', 'mouth16y', 'mouth17x', 'mouth17y', 'mouth18x',
          'mouth18y', 'mouth19x', 'mouth19y', 'happiness']

happinessArray = [0] * 10000
i = 0
for filename in os.listdir(dirHappiness):
    f = os.path.join(dirHappiness, filename)
    if os.path.isfile(f):
        print(f)
        with open(f) as file:
            excel = json.load(file)
        if excel['faceAttributes']['emotion']['happiness'] > 0.55:
            happinessAnswer = 1
        else:
            happinessAnswer = 0
        happinessArray[i] = happinessAnswer
        print(happinessArray[i])
        i += 1

with open('mouthCoords.csv', 'w', encoding='UTF8', newline="") as f:
    writer = csv.writer(f)
    writer.writerow(header)

    happinessLoop = 0
    for filename in os.listdir(realDirectory):
        img_name = realDirectory + "/" + filename
        img = io.imread(img_name)
        dets = detector(img)

        for k, d in enumerate(dets):
            shape = predictor(img, d)

        vec = np.empty([68, 2], dtype=int)
        # for b in range(68):
        #     vec[b][0] = shape.part(b).x
        #     vec[b][1] = shape.part(b).y
        # print(vec)

        mouthArrayX = [0] * 21
        mouthArrayY = [0] * 21
        i = 0
        z = 0
        while i <= 67:
            if i >= 48:
                mouthArrayX[z] = shape.part(i).x
                mouthArrayY[z] = shape.part(i).y
                z += 1
            i += 1

        data = [0] * 41
        tempY = 0
        i = 0
        x = 0

        while i < 40:
            if (i % 2) == 0:
                data[i] = mouthArrayX[x]
                tempY = mouthArrayY[x]
                x += 1
            elif i == 0:
                data[i] = mouthArrayX[x]
                tempY = mouthArrayY[x]
                x += 1
            else:
                data[i] = tempY
            i += 1
        data[40] = happinessArray[happinessLoop]
        happinessLoop += 1
        print(data)
        writer.writerow(data)
