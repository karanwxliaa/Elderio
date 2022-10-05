import flask
# %%
#!pip install tensorflow 
import tensorflow as tf
from keras import datasets, layers, models
import matplotlib.pyplot as plt
import numpy as np
import os

import cv2
import matplotlib.pyplot as plt 
import seaborn as sns
import os
from PIL import Image
from keras.utils import img_to_array
from keras_preprocessing.image import load_img
from keras.utils import np_utils


back = os.listdir("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\back_arr")
exit = os.listdir("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\exit_button")
home = os.listdir("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\home_button")
share = os.listdir("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\share_button")
menu = os.listdir("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\menu_button")


len(exit)



try:
    plt.figure(figsize = (26,16))
    for i in range(2):
        plt.subplot(13, 8, i+1)
        img = cv2.imread("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\exit_button" + "/" + exit[i])
        plt.imshow(img)
        plt.tight_layout()
    plt.show()
except:
    None

data = []
labels = []
for img in back:
    try:
        img_read = plt.imread("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\back_arr" + "/" + img)
        img_resize = cv2.resize(img_read, (206, 206))
        img_array = img_to_array(img_resize)
        data.append(img_array)
        labels.append(1)
    except:
        None
        
for img in exit:
    try:
        img_read = plt.imread("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\exit_button" + "/" + img)
        img_resize = cv2.resize(img_read, (206, 206))
        img_array = img_to_array(img_resize)
        data.append(img_array)
        labels.append(2)
    except:
        None
        
for img in menu:
    try:
        img_read = plt.imread("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\menu_button" + "/" + img)
        img_resize = cv2.resize(img_read, (206, 206))
        img_array = img_to_array(img_resize)
        data.append(img_array)
        labels.append(3)
    except:
        None

for img in home:
    try:
        img_read = plt.imread("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\home_button" + "/" + img)
        img_resize = cv2.resize(img_read, (206, 206))
        img_array = img_to_array(img_resize)
        data.append(img_array)
        labels.append(4)
    except:
        None
        
for img in share:
    try:
        img_read = plt.imread("C:\\Users\\KARAN\\Desktop\\mysorepak\\dataset\\share_button" + "/" + img)
        img_resize = cv2.resize(img_read, (206, 206))
        img_array = img_to_array(img_resize)
        data.append(img_array)
        labels.append(5)
    except:
        None

# %%
image_data = np.array(data)
labels = np.array(labels)

# %%
labels

# %%
idx = np.arange(image_data.shape[0])
np.random.shuffle(idx)
image_data = image_data[idx]
labels = labels[idx]

# %%
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(image_data, labels, test_size = 0.1, random_state = 101)

# %%
X_train.shape


# %%
X_train

# %%
X_test.shape

# %%
y_train.shape

# %%
y_test.shape

# %%
classes = ["back","exit","menu","home","share"]

# %% [markdown]
# <h4 style="color:purple">Normalizing the training data</h4>

# %%
X_train = X_train / 255.0
X_test = X_test / 255.0

# %% [markdown]
# <h4 style="color:purple">Now let us build a convolutional neural network to train our images</h4>

# %%
cnn = models.Sequential([
    layers.Conv2D(filters=32, kernel_size=(3, 3), activation='relu', input_shape=(206, 206, 3)),
    layers.MaxPooling2D((2, 2)),
    
    layers.Conv2D(filters=64, kernel_size=(3, 3), activation='relu'),
    layers.MaxPooling2D((2, 2)),
    
    layers.Flatten(),
    layers.Dense(64, activation='relu'),
    layers.Dense(10, activation='softmax')
])

# %%
cnn.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

# %%
cnn.fit(X_train, y_train, epochs=8)

# %%
cnn.evaluate(X_test,y_test)



