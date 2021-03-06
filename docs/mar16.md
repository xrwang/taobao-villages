## Structure of this repo

`scripts` contains data processing on tabular data

`raster analysis` contains specific manipulations and analysis on the satellite data

`whitepapers` contains prior art that uses the CHIPS dataset

`docs` contains various school related reports


### Prior Art

Much of this work is based on four forking paths.
- Work done on night time lights data as indicators of urbanization and use in the quantiative social sciences.
See [Analysis of urbanization dynamics](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&cad=rja&uact=8&ved=0ahUKEwinwL-3ofLZAhUMzmMKHQ1pDaAQFghVMAM&url=https%3A%2F%2Fwww.tandfonline.com%2Fdoi%2Fabs%2F10.1080%2F01431161.2017.1302114&usg=AOvVaw0R5_S1k-lQi4IHbiHrWPWi), as well as recent work using [NDVI which is show to be highly correlated to economic status of a city](www.mdpi.com/2220-9964/7/3/83/pdf-vor)

- Using satellite data to predict poverty/economic status. This comes from a variety of fields from the World Bank, to academic economists. This repo draws heavily on Marshall Burke's work at Stanford's AI and Sustainability Lab, http://sustain.stanford.edu/predicting-poverty/. The deep technical dive is here: https://arxiv.org/abs/1510.00098

- Broader work done on computer vision from the most recent [Planet Labs competition on Kaggle](https://www.kaggle.com/c/planet-understanding-the-amazon-from-space), to the amazing folks at [fast.ai](fast.ai) who have been making [PyTorch](http://pytorch.org/) accessible.

- Household income data from the [China Institute for Income Distribution](http://ciid.bnu.edu.cn/chip/index.asp), and subsequent papers on national economic growth's impact on rural households.

Finally, the repo heartily uses open source geospatial tools via https://gist.github.com/jacquestardie/0d1c0cb413b3b9b06edf

### Languages

I use R for wrangling tabular data, python tools for raster processing and statistics.

### Workflow + Components

See diagram here:

![img](Artboard 1-22.jpg)


### Links to tools mentioned:
Mercantile: https://mercantile.readthedocs.io/
Supermercado: https://github.com/mapbox/supermercado
Rasterio: https://github.com/mapbox/rasterio
Amazon Web Services Landsat:
Using the zoom level of a web map, w x h in pixels and lat lon to georeference:
Mercantile does this out of the box https://mercantile.readthedocs.io/
This works because of web mercator, which is used across all web maps
https://help.openstreetmap.org/questions/3099/calculate-bbox-from-latlonzoompixel-widthpixel-height
Python affine transformations: http://www.perrygeo.com/python-affine-transforms.html


### Repo extra outputs
"This will be so nice in the future"

- `geolocateimg` Geolocate sat image script, take google static map and geolocate it, assign crs
- `bboxscript` finds bounding box, uses https://github.com/jfein/PyGeoTools
