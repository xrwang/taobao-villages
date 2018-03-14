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

    ## ── Attaching packages ──────────────────────────────────────────────────── tidyverse 1.2.1 ──

    ## ✔ ggplot2 2.2.1     ✔ purrr   0.2.4
    ## ✔ tibble  1.4.1     ✔ dplyr   0.7.4
    ## ✔ tidyr   0.7.2     ✔ stringr 1.2.0
    ## ✔ readr   1.1.1     ✔ forcats 0.2.0

    ## ── Conflicts ─────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## ✖ dplyr::filter() masks stats::filter()
    ## ✖ dplyr::lag()    masks stats::lag()

``` r
# 2174 is CHIPS from 2002 
# for some reason this one has the clearest county level data
main_table_chips_2002 <- read_tsv('2002/DS0006/21741-0006-Data.tsv')
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
    ## row # A tibble: 5 x 5 col     row col   expected               actual           file                 expected   <int> <chr> <chr>                  <chr>            <chr>                actual 1  5632 p1_37 an integer             .100000001490116 '2002/DS0006/21741-… file 2  6685 p1_39 an integer             .5               '2002/DS0006/21741-… row 3  6780 p1_62 no trailing characters .5               '2002/DS0006/21741-… col 4  7848 p1_12 an integer             .5               '2002/DS0006/21741-… expected 5  8077 p1_62 no trailing characters .5               '2002/DS0006/21741-…
    ## ... ................. ... .......................................................................... ........ .......................................................................... ...... .......................................................................... .... .......................................................................... ... .......................................................................... ... .......................................................................... ........ ..........................................................................
    ## See problems(...) for more details.

``` r
main_table_chips_2002
```

    ## # A tibble: 37,969 x 84
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
    ## # ... with 37,959 more rows, and 73 more variables: p1_10 <int>, p1_11
    ## #   <int>, p1_12 <int>, p1_13 <int>, p1_14 <int>, p1_15 <int>, p1_16
    ## #   <int>, p1_17 <dbl>, p1_18 <int>, p1_19 <dbl>, p1_20 <int>, p1_21
    ## #   <int>, p1_22 <int>, p1_23 <dbl>, p1_24 <int>, p1_25 <int>, p1_26
    ## #   <int>, p1_27 <int>, p1_28 <int>, p1_29 <int>, p1_30 <int>, p1_31
    ## #   <int>, p1_32 <int>, p1_33 <int>, p1_34 <int>, p1_35 <dbl>, p1_36
    ## #   <int>, p1_37 <int>, p1_38 <int>, p1_39 <int>, p1_40 <dbl>, p1_41
    ## #   <int>, p1_42 <int>, p1_43 <int>, p1_44 <int>, p1_45 <int>, p1_46
    ## #   <int>, p1_47 <int>, p1_48 <int>, p1_49 <int>, p1_50 <int>, p1_51
    ## #   <int>, p1_52 <int>, p1_53 <int>, p1_54 <int>, p1_55 <int>, p1_56
    ## #   <int>, p1_57 <int>, p1_58 <int>, p1_59 <int>, p1_60 <int>, p1_61
    ## #   <int>, p1_62 <int>, p1_63 <int>, p1_64 <int>, p1_65 <int>, p1_66
    ## #   <int>, p1_67_1 <int>, p1_67_2 <int>, p1_68_1 <int>, p1_68_2 <int>,
    ## #   p1_69_1 <int>, p1_69_2 <int>, p1_70_1 <int>, p1_70_2 <int>, p1_71
    ## #   <int>, p1_72 <int>, p1_73 <int>, p1_74 <int>, p1_75 <int>, p1_76
    ## #   <int>, p1_77 <int>, p1_78 <int>

``` r
# main_table_chips is a tale with 84 columns and 37969 rows
# the first column is county (coun), second column is vill (village), hous (is house)
# county codes come from a separate file 

counties <- readxl::read_excel('countycodes1.xlsx', skip=2, 
                               col_names=c(
                                 'code', 
                                 'name'
                                 ))

counties2 <- readxl::read_excel('countycodes2.xlsx', skip=2,
                                col_names=c('code', 
                                            'name'))
```

``` r
library(dplyr)

counties_main <- read_csv('../Administrative-divisions-of-China/dist/areas.csv')
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

city_main <- read_csv('../Administrative-divisions-of-China/dist/cities.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   code = col_integer(),
    ##   name = col_character(),
    ##   provinceCode = col_integer()
    ## )

``` r
province_main <- read_csv('../Administrative-divisions-of-China/dist/provinces.csv')
```

    ## Parsed with column specification:
    ## cols(
    ##   code = col_integer(),
    ##   name = col_character()
    ## )

``` r
prov_county_main <- left_join(counties_main, province_main,
                              by=c('provinceCode'='code'))

prov_county_main
```

    ## # A tibble: 2,856 x 7
    ##      code name.x   cityCode provinceCode lat   long  name.y
    ##     <int> <chr>       <int>        <int> <chr> <chr> <chr> 
    ##  1 110101 东城区       1101           11 NA    NA    北京市
    ##  2 110102 西城区       1101           11 NA    NA    北京市
    ##  3 110105 朝阳区       1101           11 NA    NA    北京市
    ##  4 110106 丰台区       1101           11 NA    NA    北京市
    ##  5 110107 石景山区     1101           11 NA    NA    北京市
    ##  6 110108 海淀区       1101           11 NA    NA    北京市
    ##  7 110109 门头沟区     1101           11 NA    NA    北京市
    ##  8 110111 房山区       1101           11 NA    NA    北京市
    ##  9 110112 通州区       1101           11 NA    NA    北京市
    ## 10 110113 顺义区       1101           11 NA    NA    北京市
    ## # ... with 2,846 more rows

``` r
# villages_main <- read_csv('../Administrative-divisions-of-China/dist/villages.csv')

# villages_main this is the list of villages, not necessarily helpful, wait for response from the chinese village researchers
```

``` r
n <- left_join(main_table_chips_2002, counties_main, by=c('coun'='code'))


nrow(n)
```

    ## [1] 37969

``` r
head(n)
```

    ## # A tibble: 6 x 89
    ##     coun  vill  hous  p1_2  p1_3  p1_4  p1_5  p1_6  p1_7  p1_8  p1_9 p1_10
    ##    <int> <int> <int> <int> <int> <int> <int> <int> <int> <int> <int> <int>
    ## 1 110111     3     1     1     1     1    42     1     1     1     2    NA
    ## 2 110111     3     1     2     2     2    41     1     1     1     2    NA
    ## 3 110111     3     1     3     3     1    19     2     2     2     2    NA
    ## 4 110111     3     1     4     3     1    12     2     6     2     2    NA
    ## 5 110111     3     2     1     1     2    56     1     4     1     2    NA
    ## 6 110111     3     2     2     2     1    58     1     2     2     2    NA
    ## # ... with 77 more variables: p1_11 <int>, p1_12 <int>, p1_13 <int>, p1_14
    ## #   <int>, p1_15 <int>, p1_16 <int>, p1_17 <dbl>, p1_18 <int>, p1_19
    ## #   <dbl>, p1_20 <int>, p1_21 <int>, p1_22 <int>, p1_23 <dbl>, p1_24
    ## #   <int>, p1_25 <int>, p1_26 <int>, p1_27 <int>, p1_28 <int>, p1_29
    ## #   <int>, p1_30 <int>, p1_31 <int>, p1_32 <int>, p1_33 <int>, p1_34
    ## #   <int>, p1_35 <dbl>, p1_36 <int>, p1_37 <int>, p1_38 <int>, p1_39
    ## #   <int>, p1_40 <dbl>, p1_41 <int>, p1_42 <int>, p1_43 <int>, p1_44
    ## #   <int>, p1_45 <int>, p1_46 <int>, p1_47 <int>, p1_48 <int>, p1_49
    ## #   <int>, p1_50 <int>, p1_51 <int>, p1_52 <int>, p1_53 <int>, p1_54
    ## #   <int>, p1_55 <int>, p1_56 <int>, p1_57 <int>, p1_58 <int>, p1_59
    ## #   <int>, p1_60 <int>, p1_61 <int>, p1_62 <int>, p1_63 <int>, p1_64
    ## #   <int>, p1_65 <int>, p1_66 <int>, p1_67_1 <int>, p1_67_2 <int>, p1_68_1
    ## #   <int>, p1_68_2 <int>, p1_69_1 <int>, p1_69_2 <int>, p1_70_1 <int>,
    ## #   p1_70_2 <int>, p1_71 <int>, p1_72 <int>, p1_73 <int>, p1_74 <int>,
    ## #   p1_75 <int>, p1_76 <int>, p1_77 <int>, p1_78 <int>, name <chr>,
    ## #   cityCode <int>, provinceCode <int>, lat <chr>, long <chr>
