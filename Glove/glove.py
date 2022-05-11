


import pickle
import bcolz
import numpy as np

words = []
idx = 0
word2idx = {}
vectors = bcolz.carray(np.zeros(1), rootdir='glove.6B.50d.dat', mode='w')

with open('glove.6B.50d.txt', 'rb') as f:
    for l in f:
        line = l.decode().split()
        word = line[0]
        words.append(word)
        word2idx[word] = idx
        idx += 1
        vect = np.array(line[1:]).astype(np.float)
        vectors.append(vect)
    
vectors = bcolz.carray(vectors[1:].reshape((400001, 50)), rootdir='glove.6B.50d.dat', mode='w')
vectors.flush()
pickle.dump(words, open("glove.6B.50d.pkl", 'wb'))
pickle.dump(word2idx, open("glove.6B.50_idx.pkl", 'wb'))