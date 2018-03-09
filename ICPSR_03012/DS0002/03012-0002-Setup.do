/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 03012
 |                 CHINESE HOUSEHOLD INCOME PROJECT, 1995
 |                  (DATASET 0002: RURAL HOUSEHOLD DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 03012-0002-statasetup.do)
 |
 **************************************************************************/

set mem 30m  /* Allocating 30 megabyte(s) of RAM for Stata SE to read the
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


label data "Chinese Household Income Project, 1995, Rural Household Data"

#delimit ;
label define B401      0 "unkown code" 1 "flat" 2 "hilly" 3 "mountainous" ;
label define B402      0 "unkown code" 1 "yes" 2 "no" ;
label define B403      0 "unkown code" 1 "yes" 2 "no" ;
label define B404      0 "unkown code" 1 "yes" 2 "no" ;
label define B405      0 "unkown code" 1 "yes" 2 "no" ;
label define B406      0 "unkown code" 1 "yes" 2 "no" ;
label define B407      0 "unkown code" 1 "yes" 2 "no" 3 "do not know" ;
label define B407A     0 "unkown code" 1 "the national govt." 2 "province"
                       3 "do not know" ;
label define B408      0 "unkown code" 1 "yes" 2 "no" ;
label define B409      0 "unkown code" 1 "yes" 2 "no" ;
label define B410      0 "unkown code" 1 "electric"
                       2 "lacks electric lighting" ;
label define B411      0 "unkown code" 1 "tap" 2 "well" 3 "other" ;
label define B1003     1 "privately owned" 2 "rented private dwelling"
                       3 "publicly owned dwelling" 4 "other" ;
label define B1004     0 "unkown code" 1 "before 1978"
                       2 "between 1978 and 1984" 3 "between 1985 and 1989"
                       4 "after 1989" ;


#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

