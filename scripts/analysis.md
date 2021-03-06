---
title: "analyzing CHIPS data!"
author: "Xiaowei Wang"
output: github_document
---

## Try out python for raster analysis 
```{r}
library(reticulate)
use_condaenv('numlinalg')
numpy <- import('numpy')
rasterio <- import('rasterio')
pandas <- import('pandas')
osgeo <- import('osgeo')
sklearn <- import('sklearn')
```

```{python}
from __future__ import division
import numpy as np
import rasterio
import subprocess
```

```{python}

x = 'hello, python world!'
print(x.split(' '))
import rasterio
import numpy as np
from osgeo import gdal

src = rasterio.open('/Users/xiaoweirwang/Projects/rasterio/tests/data/rgb1.tif')

print(src.shape)

grey = np.mean(np.dstack(src.read()), axis=2)

srcprof = src.profile.copy()

classes = 5
# Breaks is an array of the class breaks: [   0.   51.  102.  153.  204.]
breaks = (np.arange(classes) / float(classes)) * grey.max()

# classify the raster
classified = np.sum(np.dstack([(grey < b) for b in breaks]), axis=2).reshape(1, 400, 400).astype(np.int32)




print(classified)
```

```{python}
# code from the lovely @vruba
# python pca_multiband.py input.jpeg output.tif
# n-band image -> PCA -> n-band TIFF image
# with lots of hackety assumptions
# (e.g., output is same type as input)

from sys import argv
import rasterio as rio
import numpy as np
from sklearn import decomposition


with rio.open('/Users/xiaoweirwang/Projects/rasterio/tests/data/rgb1.tif') as src:
  meta = src.meta
  pixels = src.read()
  
dtype = meta['dtype']
count = meta['count']
  
# Todo: make this cleaner:
pixels = np.dstack([c.ravel() for c in pixels])[0]

pca = decomposition.PCA(n_components=count, whiten=False)
pca.fit(pixels)

for band in range(len(pca.components_)):
  print(
    'Band {0} will hold {1:.4g} of variance with weights:\n{2}'.format(
      band+1,
      pca.explained_variance_ratio_[band],
      ', '.join("{0:.4g}".format(x) for x in pca.components_[band])))
      # .format() within .format()! Wow! Very pro move, very well
      # respected technique, 9.7 even from the East German judges!

# Here's the actual work:
out = pca.transform(pixels)

# This is the messy reverse of the messy ravel above:
xyz = np.array([
  out[:,c].reshape(meta['height'], meta['width'])
  for c in range(count)
])

# Scale each band separately to fill out the data type.
# (You either really want this or really don't want this.)
xyz = np.array([
  ((c - np.amin(c))/(np.amax(c) - np.amin(c)))*np.iinfo(dtype).max
  for c in xyz
])

xyz = xyz.astype(dtype)

meta.update({
  'transform': meta['affine'],
  'driver': 'GTiff'
})

with rio.open('test.tif', 'w', **meta) as dst:
  dst.write(xyz)
  
with rio.open('test.tif') as src:
  print(src.count)

```


```{python}


```