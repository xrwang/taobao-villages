[![Build Status](https://travis-ci.org/xrwang/taobao-villages.svg?branch=master)](https://travis-ci.org/xrwang/taobao-villages)

# taobao-villages
CHIP data!

**CHIP** is the Chinese Household Income Project, or "The Longitudinal Survey on Rural Urban Migration in China". This is an extensive dataset taken throughout the years from 1988, 1995, 2002, 2007 and 2013.

The surveys contain tens of thousands of cases and multiple datasets. For example, the CHIP2002 contains 84 variables and 37,969 cases just for rural cases.

See http://ciid.bnu.edu.cn/chip/index.asp for more information. From their site:
>These surveys were carried out as part of a collaborative research project on incomes and inequality in China organized by Chinese and international researchers, with assistance from the National Bureau of Statistics (NBS). The CHIP project participants and other researchers have analyzed the data from these four waves and published a wide range of articles, reports, and books. Descriptions of the CHIP surveys and key findings can be found in Griffin and Zhao (1993), Riskin, Zhao, and Li (2001), Gustafsson, Li, and Sicular (2008), and Li, Hiroshi and Sicular (2013).

>Eichen and Zhang (1993) describe the 1988 survey, and Li, Luo, Wei, and Yue (2008) describe the 1995 and 2002 surveys. Luo, Li, Sicular, Deng, and Yue (2013) provides basic information about the 2007 survey. The CHIP surveys are closely related to the NBS household survey. Li et al. (2008) discuss how the NBS household survey samples were selected. Additional details about the NBS household surveys can be found in recent NBS statistical reports and publications.



## Structure of this repo

 :point_right: `proposal.md` [ds421proposal.md](ds421proposal.md) is a proposal for DS421 (hi!)

 :point_right: `mar160.md` [mar160.md](mar160.md) contains a longer, graphical description of what this repo does and the background literature that this work is built on.

 :point_right:  `scripts` contains data processing on tabular data. It contains a `processing.Rmd` and `analysis.Rmd`. `processing.Rmd` cleans a lot of the data, joins and creates new tables out of existing CHIP data that has the columns made consistent (the variables have changed slightly from year to year of surveying). `analysis.Rmd` contains descriptive stats + exploratory analysis of CHIP data.

 :point_right: `raster analysis` contains specific manipulations and analysis on the satellite data. I guess you can use python in Rmarkdown and we'll see how this goes...I would like to take advantage of rasterio/numpy/scikit-learn's capabilities.

 :point_right: `whitepapers` contains prior art that uses the CHIPS dataset

 :point_right: `docs` contains various school related reports to show that I am not the laziest PhD student (but certainly not the most industrious).

## Secrets
Secrets including API tokens and AWS keys are stored in `~/.Renviron` file. What's needed for this repo:
```
AWS_DEFAULT_REGION
Google Maps Geocoding API Key
```
I have been setting these up manually but it will be so nice in the future when building/testing automates the process
