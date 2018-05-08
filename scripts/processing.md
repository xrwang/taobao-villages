processing CHIPs data to get satellite imagery for the locations
================
Xiaowei Wang

``` r
library(haven)
# yourData = read_dta("CHIP2013_rural_household_f_income_asset.dta")
# yourData

# yourData2 = read_dta("RHS_w2_vill.dta")
# yourData3 = read_dta("RHS_w2_abc.dta")
# yourData4 = read_dta("RHS_w2_d.dta")
# yourData5 = read_dta("RHS_w2_e.dta")


# yourData2
# yourData3
# yourData4
# yourData5
```

``` r
library(tidyverse)
```

    ## ── Attaching packages ──────────────────────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 2.2.1.9000     ✔ purrr   0.2.4     
    ## ✔ tibble  1.4.2          ✔ dplyr   0.7.4     
    ## ✔ tidyr   0.7.2          ✔ stringr 1.3.0     
    ## ✔ readr   1.1.1          ✔ forcats 0.2.0

    ## Warning: package 'tibble' was built under R version 3.4.3

    ## Warning: package 'stringr' was built under R version 3.4.3

    ## ── Conflicts ─────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
# 2174 is CHIPS from 2002 
# for some reason this one has the clearest county level data
main_table_chips_2002 <- read_tsv('data/2002/DS0006/21741-0006-Data.tsv')
```

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_integer(),
    ##   p1_17 = col_double(),
    ##   p1_19 = col_double(),
    ##   p1_23 = col_double(),
    ##   p1_35 = col_double(),
    ##   p1_40 = col_double()
    ## )

    ## See spec(...) for full column specifications.

    ## Warning in rbind(names(probs), probs_f): number of columns of result is not
    ## a multiple of vector length (arg 1)

    ## Warning: 244 parsing failures.
    ## row # A tibble: 5 x 5 col     row col   expected               actual           file                 expected   <int> <chr> <chr>                  <chr>            <chr>                actual 1  5632 p1_37 an integer             .100000001490116 'data/2002/DS0006/2… file 2  6685 p1_39 an integer             .5               'data/2002/DS0006/2… row 3  6780 p1_62 no trailing characters .5               'data/2002/DS0006/2… col 4  7848 p1_12 an integer             .5               'data/2002/DS0006/2… expected 5  8077 p1_62 no trailing characters .5               'data/2002/DS0006/2…
    ## ... ................. ... .......................................................................... ........ .......................................................................... ...... .......................................................................... .... .......................................................................... ... .......................................................................... ... .......................................................................... ........ ..........................................................................
    ## See problems(...) for more details.

``` r
main_table_chips_1995 <- read_tsv('data/1995/DS0002/03012-0002-Data.tsv')
```

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_integer(),
    ##   B801 = col_double(),
    ##   B801A = col_double(),
    ##   B801B = col_double(),
    ##   B801C = col_double(),
    ##   B801D = col_double(),
    ##   B801E = col_double(),
    ##   B802 = col_double(),
    ##   B802A = col_double(),
    ##   B802B = col_double(),
    ##   B802C = col_double(),
    ##   B903A_1 = col_double(),
    ##   B903A_2 = col_double(),
    ##   B903A_3 = col_double(),
    ##   B903B_1 = col_double(),
    ##   B903B_2 = col_double(),
    ##   B903B_3 = col_double(),
    ##   B904A_2 = col_double(),
    ##   B904B_2 = col_double(),
    ##   B904C_2 = col_double(),
    ##   B904D_2 = col_double()
    ##   # ... with 10 more columns
    ## )
    ## See spec(...) for full column specifications.

    ## Warning in rbind(names(probs), probs_f): number of columns of result is not
    ## a multiple of vector length (arg 1)

    ## Warning: 198 parsing failures.
    ## row # A tibble: 5 x 5 col     row col     expected               actual file                         expected   <int> <chr>   <chr>                  <chr>  <chr>                        actual 1  1499 B904E_2 no trailing characters .9     'data/1995/DS0002/03012-000… file 2  1500 B904E_2 no trailing characters .9     'data/1995/DS0002/03012-000… row 3  1501 B904E_2 no trailing characters .3     'data/1995/DS0002/03012-000… col 4  1502 B904E_2 no trailing characters .9     'data/1995/DS0002/03012-000… expected 5  1503 B904E_2 no trailing characters .9     'data/1995/DS0002/03012-000…
    ## ... ................. ... .......................................................................... ........ .......................................................................... ...... .......................................................................... .... .......................................................................... ... .......................................................................... ... .......................................................................... ........ ..........................................................................
    ## See problems(...) for more details.

``` r
main_table_chips_1988 <- read_dta('data/1988/09836-0002-Data.dta')
main_table_chips_2008 <- read_dta("data/2008 (2009)/RHS_w2_vill.dta")
main_table_chips_2013 <- read_dta("data/2013/CHIP2013_rural_household_f_income_asset.dta")
```

``` r
#main_table_chips_2013$coun
setdiff(main_table_chips_1995$A1, main_table_chips_2002$coun)
```

    ##  [1] 110221 110225 132122 132527 132828 142125 142224 142432 142724 210621
    ## [11] 210725 220125 220223 220500 320423 320520 320624 320823 330220 362133
    ## [21] 362135 362201 362227 362233 370121 370625 370723 372522 372601 411022
    ## [31] 411223 412929 419005 419006 430425 440223 440522 440621 440924 442425
    ## [41] 442821 510130 510226 511203 512428 512622 512930 530124 532821 620501
    ## [51] 622923

``` r
#unique(main_table_chips_1995$A1)
#unique(main_table_chips_2002$coun)

ababa <- c(main_table_chips_2013$coun,main_table_chips_1995$A1,main_table_chips_2002$coun )
unique(ababa)
```

    ##   [1] 110106 110112 110114 110117 110229 140106 140181 140225 140321 140603
    ##  [11] 140722 140802 140902 140925 140926 141125 141127 210106 210112 210281
    ##  [21] 210321 210402 210521 210604 210681 210703 210802 210811 210905 211004
    ##  [31] 211322 211404 211421 320205 320281 320311 320323 320324 320505 320506
    ##  [41] 320581 320602 320681 320899 320922 321002 321003 321112 321281 321282
    ##  [51] 321284 340103 340203 340207 340302 340311 340405 340621 340803 340811
    ##  [61] 340823 340826 341021 341222 341503 341622 341702 341723 370105 370113
    ##  [71] 370125 370211 370212 370214 370285 370304 370522 370613 370704 370802
    ##  [81] 370811 371082 371427 371521 371621 371626 410105 410108 410203 410211
    ##  [91] 410224 410303 410306 410602 410702 410704 410725 410782 410804 410811
    ## [101] 410821 410902 411081 411421 411525 411626 411681 419001 420111 420114
    ## [111] 420504 420505 420626 420703 420704 420804 420923 421123 421222 422801
    ## [121] 422828 429004 429006 430111 430203 430412 430481 430602 430681 430722
    ## [131] 430726 430802 430821 430902 431003 431081 431102 431322 431382 440111
    ## [141] 440114 440115 440116 440512 440515 440605 440903 441202 441283 441481
    ## [151] 441802 441882 445281 445381 500102 500110 500112 500118 500222 500226
    ## [161] 500234 510112 510114 510122 510302 510411 510421 510725 510904 510921
    ## [171] 510922 511111 511302 511303 511402 511823 511923 512021 530103 530111
    ## [181] 530302 530402 530821 530921 532322 532621 532901 532926 533103 620102
    ## [191] 620402 620502 620522 620524 620802 620902 620921 621021 621022 621121
    ## [201] 110221 110225 130124 130922 132122 132527 132828 140521 142125 142224
    ## [211] 142327 142432 142724 210282 210621 210725 210921 211282 211321 220125
    ## [221] 220221 220223 220322 220421 220500 320423 320520 320624 320823 320925
    ## [231] 330121 330220 330226 330425 330625 332522 332526 342123 342130 342425
    ## [241] 342521 342826 360121 362133 362135 362201 362227 362233 370121 370625
    ## [251] 370723 370829 372522 372601 372929 410523 411022 411223 412721 412929
    ## [261] 419005 419006 420800 422130 422228 422425 422622 422723 430321 430425
    ## [271] 430624 430626 433125 440223 440522 440621 440924 442425 442821 510130
    ## [281] 510226 510522 511203 512428 512622 512930 513433 522225 522229 522323
    ## [291] 522422 522635 522731 530124 532722 532821 533221 533522 610121 610222
    ## [301] 610324 610423 612129 612429 620501 622201 622421 622727 622827 622923
    ## [311] 110111 130434 130728 131026 140781 140821 140981 210682 210782 220112
    ## [321] 220284 220381 320481 320683 321322 360732 360733 360902 360922 360926
    ## [331] 370112 370683 370783 370911 410781 411082 411282 411328 430482 440282
    ## [341] 440683 440982 445122 452127 452423 452528 452730 452825 500101 500382
    ## [351] 510183 511381 513821 513922 532801 620503 652201 652325 652423 652901
    ## [361] 652924 652927 653127 653130

``` r
# main_table_chips is a tale with 84 columns and 37969 rows
# the first column is county (coun), second column is vill (village), hous (is house)
```

# Get administrative divisions of China

``` r
library(dplyr)

counties_main <- read_csv('https://raw.githubusercontent.com/modood/Administrative-divisions-of-China/master/dist/areas.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   code = col_integer(),
    ##   name = col_character(),
    ##   cityCode = col_integer(),
    ##   provinceCode = col_integer()
    ## )

``` r
counties_main
```

    ## # A tibble: 2,856 x 4
    ##      code name     cityCode provinceCode
    ##     <int> <chr>       <int>        <int>
    ##  1 110101 东城区       1101           11
    ##  2 110102 西城区       1101           11
    ##  3 110105 朝阳区       1101           11
    ##  4 110106 丰台区       1101           11
    ##  5 110107 石景山区     1101           11
    ##  6 110108 海淀区       1101           11
    ##  7 110109 门头沟区     1101           11
    ##  8 110111 房山区       1101           11
    ##  9 110112 通州区       1101           11
    ## 10 110113 顺义区       1101           11
    ## # ... with 2,846 more rows

``` r
#add long lat columns to the counties data

counties_main$lat <- 'NA'
counties_main$long <- 'NA'

city_main <- read_csv('https://raw.githubusercontent.com/modood/Administrative-divisions-of-China/master/dist/cities.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   code = col_integer(),
    ##   name = col_character(),
    ##   provinceCode = col_integer()
    ## )

``` r
province_main <- read_csv('https://raw.githubusercontent.com/modood/Administrative-divisions-of-China/master/dist/provinces.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   code = col_integer(),
    ##   name = col_character()
    ## )

``` r
prov_county_main <- left_join(counties_main, province_main,
                              by=c('provinceCode'='code'))

prov_county_main <- prov_county_main %>%
    rename('cityName' = name.y, 
           'countyName' = name.x) %>%
    mutate(., geocodeAdd = paste0(cityName,countyName))


prov_county_main
```

    ## # A tibble: 2,856 x 8
    ##      code countyName cityCode provinceCode lat   long  cityName geocodeAdd
    ##     <int> <chr>         <int>        <int> <chr> <chr> <chr>    <chr>     
    ##  1 110101 东城区         1101           11 NA    NA    北京市   北京市东城区…
    ##  2 110102 西城区         1101           11 NA    NA    北京市   北京市西城区…
    ##  3 110105 朝阳区         1101           11 NA    NA    北京市   北京市朝阳区…
    ##  4 110106 丰台区         1101           11 NA    NA    北京市   北京市丰台区…
    ##  5 110107 石景山区       1101           11 NA    NA    北京市   北京市石景山区…
    ##  6 110108 海淀区         1101           11 NA    NA    北京市   北京市海淀区…
    ##  7 110109 门头沟区       1101           11 NA    NA    北京市   北京市门头沟区…
    ##  8 110111 房山区         1101           11 NA    NA    北京市   北京市房山区…
    ##  9 110112 通州区         1101           11 NA    NA    北京市   北京市通州区…
    ## 10 110113 顺义区         1101           11 NA    NA    北京市   北京市顺义区…
    ## # ... with 2,846 more rows

``` r
pcoun_codes_1 <- filter(prov_county_main, code < 400000)
pcoun_codes_2 <- filter(prov_county_main, code >= 400000)
```

\#Grabbing the long lats from google maps

Example request:

\#\#Geocoding
<https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY>

<https://maps.googleapis.com/maps/api/geocode/json?address=辽宁省凤城市&key=AIzaSyAE8v4YljHZYZJ03VydAtAn5yNOGIfr50g>

\#\#Static
Map

<https://maps.googleapis.com/maps/api/staticmap?center=40.452297,124.066919&zoom=16&size=400x400&maptype=satellite&key=AIzaSyDW8FM0kdCTFMF5iRO3z_tjWynVuzp8_iw>

``` r
# prov_county_main has the city and county data.
# concatenate the cityName and the countyName to feed in the address to google maps geocode api 

library(jsonlite)
```

    ## 
    ## Attaching package: 'jsonlite'

    ## The following object is masked from 'package:purrr':
    ## 
    ##     flatten

``` r
library(httr)
library(ggmap)
```

    ## Google Maps API Terms of Service: http://developers.google.com/maps/terms.

    ## Please cite ggmap if you use it: see citation("ggmap") for details.

``` r
#Setting ggmap credentials here.
# If you have creds in your Renviron, then you don't need to set them

# ggmap_credentials()
# 
# register_google(key='')
# 
# ggmap_credentials()
# 
# library(ggmap)
# 
# ggmap_credentials()
```

``` r
# 
# infile <- 'pcoun_2'
# data <-pcoun_codes_2
# 
# addresses = data$geocodeAdd
# 
# #define a function that will process googles server responses for us.
# getGeoDetails <- function(address){   
#    #use the gecode function to query google servers
#    geo_reply = geocode(address, output='all', messaging=TRUE, override_limit=TRUE)
#    #now extract the bits that we need from the returned list
# 
#    answer <- data.frame(lat=NA, long=NA, accuracy=NA, formatted_address=NA, address_type=NA, status=NA)
#    answer$status <- geo_reply$status
#  
#    #if we are over the query limit - want to pause for an hour
#    while(geo_reply$status == "OVER_QUERY_LIMIT"){
#        print("OVER QUERY LIMIT - Pausing for 1 hour at:") 
#        time <- Sys.time()
#        print(as.character(time))
#        Sys.sleep(60*60)
#        geo_reply = geocode(address, output='all', messaging=TRUE, override_limit=TRUE)
#        answer$status <- geo_reply$status
#    }
#  
#    #return Na's if we didn't get a match:
#    if (geo_reply$status != "OK"){
#        return(answer)
#    }   
#    #else, extract what we need from the Google server reply into a dataframe:
#    answer$lat <- geo_reply$results[[1]]$geometry$location$lat
#    answer$long <- geo_reply$results[[1]]$geometry$location$lng   
#    if (length(geo_reply$results[[1]]$types) > 0){
#        answer$accuracy <- geo_reply$results[[1]]$types[[1]]
#    }
#    answer$address_type <- paste(geo_reply$results[[1]]$types, collapse=',')
#    answer$formatted_address <- geo_reply$results[[1]]$formatted_address
#     
#    return(answer)
# }
#  
# #initialise a dataframe to hold the results
# geocoded <- data.frame()
# # find out where to start in the address list (if the script was interrupted before):
# startindex <- 1
# #if a temp file exists - load it up and count the rows!
# tempfilename <- paste0(infile, '_temp_geocoded.rds')
# if (file.exists(tempfilename)){
#        print("Found temp file - resuming from index:")
#        geocoded <- readRDS(tempfilename)
#        startindex <- nrow(geocoded)+1
#        print(startindex)
# }
#  
# # Start the geocoding process - address by address. geocode() function takes care of query speed limit.
# for (ii in seq(startindex, length(addresses))){
#    print(paste("Working on index", ii, "of", length(addresses)))
#    #query the google geocoder - this will pause here if we are over the limit.
#     
#    result = getGeoDetails(addresses[ii]) 
#    print(result$status)     
#    result$index <- ii
#    #append the answer to the results file.
#    geocoded <- rbind(geocoded, result)
#    #save temporary results as we are going along
#    saveRDS(geocoded, tempfilename)
# }
```

``` r
# blar <- data.frame(matrix(ncol = 3, nrow = 1516))
# #now we add the latitude and longitude to the main data
# 
# blar$status <- geocoded$status
# blar$formatted_address <- geocoded$formatted_address
# blar$index <- geocoded$index
# blar$lat <- geocoded$lat
# blar$long <- geocoded$long
# blar$accuracy <- geocoded$accuracy
#  
# 
# 
# #finally write it all to the output files
# #saveRDS(data, paste0("../data/", infile ,"_geocoded.rds"))
# write.table(blar, file=paste0("", infile ,"_geocoded.csv"), sep=",", row.names=FALSE)
```

# Now there’s two tables, put them together vertically

``` r
a <- read_csv('data/pcoun_1_geocoded.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_character(),
    ##   X2 = col_character(),
    ##   X3 = col_character(),
    ##   status = col_character(),
    ##   formatted_address = col_character(),
    ##   index = col_integer(),
    ##   lat = col_double(),
    ##   long = col_double(),
    ##   accuracy = col_character()
    ## )

``` r
b <- read_csv('data/pcoun_2_geocoded.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   X1 = col_character(),
    ##   X2 = col_character(),
    ##   X3 = col_character(),
    ##   status = col_character(),
    ##   formatted_address = col_character(),
    ##   index = col_integer(),
    ##   lat = col_double(),
    ##   long = col_double(),
    ##   accuracy = col_character()
    ## )

``` r
geocoded_areas <- bind_rows(a,b)

prov_county_main$lat <- geocoded_areas$lat
prov_county_main$long <- geocoded_areas$long

prov_county_main$engAdd <- geocoded_areas$formatted_address
prov_county_main
```

    ## # A tibble: 2,856 x 9
    ##      code countyName cityCode provinceCode   lat  long cityName geocodeAdd
    ##     <int> <chr>         <int>        <int> <dbl> <dbl> <chr>    <chr>     
    ##  1 110101 东城区         1101           11  39.9  116. 北京市   北京市东城区…
    ##  2 110102 西城区         1101           11  39.9  116. 北京市   北京市西城区…
    ##  3 110105 朝阳区         1101           11  39.9  116. 北京市   北京市朝阳区…
    ##  4 110106 丰台区         1101           11  39.9  116. 北京市   北京市丰台区…
    ##  5 110107 石景山区       1101           11  39.9  116. 北京市   北京市石景山区…
    ##  6 110108 海淀区         1101           11  40.0  116. 北京市   北京市海淀区…
    ##  7 110109 门头沟区       1101           11  39.9  116. 北京市   北京市门头沟区…
    ##  8 110111 房山区         1101           11  39.7  116. 北京市   北京市房山区…
    ##  9 110112 通州区         1101           11  39.9  117. 北京市   北京市通州区…
    ## 10 110113 顺义区         1101           11  40.1  117. 北京市   北京市顺义区…
    ## # ... with 2,846 more rows, and 1 more variable: engAdd <chr>

``` r
# villages_main <- read_csv('../Administrative-divisions-of-China/dist/villages.csv')
# villages_main
# villages_main this is the list of villages, not necessarily helpful, wait for response from the chinese village researchers
```

``` r
n <- left_join(main_table_chips_2002, prov_county_main, by=c('coun'='code'))
```

``` r
n
```

    ## # A tibble: 37,969 x 92
    ##      coun  vill  hous  p1_2  p1_3  p1_4  p1_5  p1_6  p1_7  p1_8  p1_9
    ##     <int> <int> <int> <int> <int> <int> <int> <int> <int> <int> <int>
    ##  1 110111     3     1     1     1     1    42     1     1     1     2
    ##  2 110111     3     1     2     2     2    41     1     1     1     2
    ##  3 110111     3     1     3     3     1    19     2     2     2     2
    ##  4 110111     3     1     4     3     1    12     2     6     2     2
    ##  5 110111     3     2     1     1     2    56     1     4     1     2
    ##  6 110111     3     2     2     2     1    58     1     2     2     2
    ##  7 110111     3     2     3     3     1    24     2     1     2     2
    ##  8 110111     3     3     1     1     2    51     1     4     2     2
    ##  9 110111     3     3     2     2     1    49     1     1     2     2
    ## 10 110111     3     3     3     3     1    22     2     6     2     2
    ## # ... with 37,959 more rows, and 81 more variables: p1_10 <int>,
    ## #   p1_11 <int>, p1_12 <int>, p1_13 <int>, p1_14 <int>, p1_15 <int>,
    ## #   p1_16 <int>, p1_17 <dbl>, p1_18 <int>, p1_19 <dbl>, p1_20 <int>,
    ## #   p1_21 <int>, p1_22 <int>, p1_23 <dbl>, p1_24 <int>, p1_25 <int>,
    ## #   p1_26 <int>, p1_27 <int>, p1_28 <int>, p1_29 <int>, p1_30 <int>,
    ## #   p1_31 <int>, p1_32 <int>, p1_33 <int>, p1_34 <int>, p1_35 <dbl>,
    ## #   p1_36 <int>, p1_37 <int>, p1_38 <int>, p1_39 <int>, p1_40 <dbl>,
    ## #   p1_41 <int>, p1_42 <int>, p1_43 <int>, p1_44 <int>, p1_45 <int>,
    ## #   p1_46 <int>, p1_47 <int>, p1_48 <int>, p1_49 <int>, p1_50 <int>,
    ## #   p1_51 <int>, p1_52 <int>, p1_53 <int>, p1_54 <int>, p1_55 <int>,
    ## #   p1_56 <int>, p1_57 <int>, p1_58 <int>, p1_59 <int>, p1_60 <int>,
    ## #   p1_61 <int>, p1_62 <int>, p1_63 <int>, p1_64 <int>, p1_65 <int>,
    ## #   p1_66 <int>, p1_67_1 <int>, p1_67_2 <int>, p1_68_1 <int>,
    ## #   p1_68_2 <int>, p1_69_1 <int>, p1_69_2 <int>, p1_70_1 <int>,
    ## #   p1_70_2 <int>, p1_71 <int>, p1_72 <int>, p1_73 <int>, p1_74 <int>,
    ## #   p1_75 <int>, p1_76 <int>, p1_77 <int>, p1_78 <int>, countyName <chr>,
    ## #   cityCode <int>, provinceCode <int>, lat <dbl>, long <dbl>,
    ## #   cityName <chr>, geocodeAdd <chr>, engAdd <chr>
