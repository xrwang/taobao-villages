/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21741
 |                 CHINESE HOUSEHOLD INCOME PROJECT, 2002
 |          (DATASET 0006: RURAL INDIVIDUAL INCOME, CONSUMPTION,
 |                          AND EMPLOYMENT DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21741-0006-statasetup.do)
 |
 **************************************************************************/

set mem 20m  /* Allocating 20 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/


label data "Chinese Household Income Project, 2002, Rural Individual Income, Consumption, and Employment Data"

#delimit ;
label define P1_3      1 "Self" 2 "Spouse" 3 "Child" 4 "Child-in-law"
                       5 "Grandchild" 6 "Parent" 7 "Parent-in-law"
                       8 "Grandparent" 9 "Brother or sister"
                       10 "Other relative" 11 "Non-relative" ;
label define P1_4      1 "male" 2 "female" ;
label define P1_6      1 "With spouse" 2 "Unmarried" 3 "divorced" 4 "Widowed"
                       5 "Other" ;
label define P1_7      1 "Working or employed"
                       2 "Unemployed or waiting for job" 3 "Retired"
                       4 "Full-time homemaker"
                       5 "Disabled, injured or had chronic disease, unable to work"
                       6 "Full-time student" 7 "Dropped-out student"
                       8 "Pre-school child" 9 "Other" ;
label define P1_8      1 "Yes" 2 "No" ;
label define P1_9      1 "Yes" 2 "No" ;
label define P1_10     1 "Chuang" 2 "Hui" 3 "Uygurs" 4 "Yi" 5 "Miao"
                       6 "Manchu" 7 "Other" ;
label define P1_11     1 "College or above" 2 "Professional school"
                       3 "Middle level professional, technical or vocational school"
                       4 "Senior middle school" 5 "Junior middle school"
                       6 "4 or more years of elementary school"
                       7 "1-3 years of elementary school"
                       8 "Illiterate or semi-illiterate" ;
label define P1_13     1 "Yes" 2 "No" ;
label define P1_14     1 "Very good" 2 "Good" 3 "Just so-so" 4 "Bad"
                       5 "Very bad" ;
label define P1_15     1 "Yes" 2 "No" ;
label define P1_16     1 "Yes" 2 "No" ;
label define P1_18     1 "Yes" 2 "No" ;
label define P1_21     1 "Very Healthy" 2 "Healthy" 3 "So-so" 4 "Bad"
                       5 "Very bad" ;
label define P1_22     1 "Yes" 2 "No" ;
label define P1_24     1 "No"
                       2 "Village (production team/brigade) cadre (with salary)"
                       3 "Township cadre" 4 "County cadre" ;
label define P1_25     1 "No"
                       2 "Village (production team/brigade) cadre (with salary)"
                       3 "Township cadre" 4 "County cadre" ;
label define P1_26     1 "Yes" 2 "No" ;
label define P1_27     1 "Yes" 2 "No" ;
label define P1_28     1 "Yes" 2 "No" ;
label define P1_29     1 "Yes" 2 "No" ;
label define P1_67_1   1 "Farm labor" 2 "ordinary worker" 3 "skilled worker"
                       4 "professional or technical worker"
                       5 "Owner or manager of enterprise"
                       6 "Village and production team/brigade cadre"
                       7 "Village and town cadre"
                       8 "Official of party or gov't office (county or higher level)"
                       9 "Ordinary cadre in an enterprise"
                       10 "Temporary or short-term contract worker"
                       11 "Non-farm individual enterprise owner (e.g. retailer, driver)"
                       12 "Employee in Non-farm individual enterprise"
                       13 "Other" ;
label define P1_67_2   1 "Farm labor" 2 "ordinary worker" 3 "skilled worker"
                       4 "professional or technical worker"
                       5 "Owner or manager of enterprise"
                       6 "Village and production team/brigade cadre"
                       7 "Village and town cadre"
                       8 "Official of party or gov't office (county or higher level)"
                       9 "Ordinary cadre in an enterprise"
                       10 "Temporary or short-term contract worker"
                       11 "Non-farm individual enterprise owner (e.g. retailer, driver)"
                       12 "Employee in Non-farm individual enterprise"
                       13 "Other" ;
label define P1_68_1   1 "farming household" 2 "private enterprise"
                       3 "Non-farming individual enterprise"
                       4 "township or village collective owned enterprise"
                       5 "State-owned enterprise or institution"
                       6 "Sino-foreign joint venture"
                       7 "Foreign owned enterprise"
                       8 "other kinds enterprise or institution"
                       9 "currently no job or unemployed" 10 "Other" ;
label define P1_68_2   1 "farming household" 2 "private enterprise"
                       3 "Non-farming individual enterprise"
                       4 "township or village collective owned enterprise"
                       5 "State-owned enterprise or institution"
                       6 "Sino-foreign joint venture"
                       7 "Foreign owned enterprise"
                       8 "other kinds enterprise or institution"
                       9 "currently no job or unemployed" 10 "Other" ;
label define P1_69_1   1 "Agriculture (planting, herborization)"
                       2 "Forestry, husbandry, fishing or water conservancy"
                       3 "Mineral and geological survey and prospecting"
                       4 "industry" 5 "Construction"
                       6 "Transportation, communications, posts and telecommunications"
                       7 "Commerce and trade" 8 "Restaurants & catering"
                       9 "materials supply and marketing, warehousing"
                       10 "Real estate" 11 "Public service"
                       12 "Personal services or consulting services"
                       13 "public health, sports and social welfare"
                       14 "Education, culture, arts and broadcasting"
                       15 "Scientific research and professional services"
                       16 "Finance and insurance"
                       17 "Government agents, party organisations and social groups"
                       18 "Other" 19 "Don't know" ;
label define P1_69_2   1 "Agriculture (planting, herborization)"
                       2 "Forestry, husbandry, fishing or water conservancy"
                       3 "Mineral and geological survey and prospecting"
                       4 "industry" 5 "Construction"
                       6 "Transportation, communications, posts and telecommunications"
                       7 "Commerce and trade" 8 "Restaurants & catering"
                       9 "materials supply and marketing, warehousing"
                       10 "Real estate" 11 "Public service"
                       12 "Personal services or consulting services"
                       13 "public health, sports and social welfare"
                       14 "Education, culture, arts and broadcasting"
                       15 "Scientific research and professional services"
                       16 "Finance and insurance"
                       17 "Government agents, party organisations and social groups"
                       18 "Other" 19 "Don't know" ;
label define P1_70_1   1 "Within village" 2 "out of village, within township"
                       3 "out of township, within county"
                       4 "out of county, within province" 5 "out of province" ;
label define P1_70_2   1 "Within village" 2 "out of village, within township"
                       3 "out of township, within county"
                       4 "out of county, within province" 5 "out of province" ;
label define P1_71     1 "indoors (in an office or a factory)" 2 "outdoors"
                       3 "underground or underwater" 4 "other" ;
label define P1_72     1 "Yes" 2 "No" 3 "Don't know" ;
label define P1_73     1 "Yes" 2 "No" 3 "Don't know" ;
label define P1_74     1 "Home" 2 "Dormitory" 3 "Shed in construction site"
                       4 "Rented housing" 5 "Other" ;
label define P1_75     1 "found it on your own"
                       2 "introduced by relative or friend"
                       3 "assigned by local labor bureau"
                       4 "assigned by township/village collective"
                       5 "introduced by labor service company" 6 "other" ;
label define P1_76     1 "Family member or relative" 2 "Neighbor"
                       3 "Schoolmate" 4 "Colleague" 5 "Fellow-villager"
                       6 "Other" ;
label define P1_77     1 "No" 2 "Village cadre" 3 "Township cadre"
                       4 "County or above level cadre" ;


#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

