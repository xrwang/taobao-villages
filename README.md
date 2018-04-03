[![Build Status](https://travis-ci.org/xrwang/taobao-villages.svg?branch=master)](https://travis-ci.org/xrwang/taobao-villages)

# taobao-villages
CHIPS data!



## Structure of this repo
 :point_right: `mar160.md` [mar160.md](mar160.md) contains a longer, graphical description of this repo and the background literature that this work is built on.

 :point_right:  `scripts` contains data processing on tabular data.

 :point_right: `raster analysis` contains specific manipulations and analysis on the satellite data

 :point_right: `whitepapers` contains prior art that uses the CHIPS dataset

 :point_right: `docs` contains various school related reports to show that I am not the laziest PhD student



## Secrets
Secrets including API tokens and AWS keys are stored in `~/.Renviron` file. What's needed for this repo:
```
AWS_DEFAULT_REGION
Google Maps Geocoding API Key
```
I have been setting these up manually but it will be so nice in the future when building/testing automates the process
