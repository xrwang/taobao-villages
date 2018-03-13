/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 21741
 |                 CHINESE HOUSEHOLD INCOME PROJECT, 2002
 |          (DATASET 0006: RURAL INDIVIDUAL INCOME, CONSUMPTION,
 |                          AND EMPLOYMENT DATA)
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g.,
 | "c:\temp\21741-0006-data.txt").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .; 
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | NOTE:  Users should modify this setup file to suit their specific needs.
 | Sections for PROC FORMAT, FORMAT, and MISSING VALUE RECODES have been
 | commented out (i.e., '/*'). To include these sections in the final SAS
 | setup, users should remove the SAS comment indicators from the desired
 | section(s).
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

/*
PROC FORMAT;
  VALUE p1_3ffff  1='(1) Self' 2='(2) Spouse' 3='(3) Child' 4='(4) Child-in-law'
                  5='(5) Grandchild' 6='(6) Parent' 7='(7) Parent-in-law' 8='(8) Grandparent'
                  9='(9) Brother or sister' 10='(10) Other relative' 11='(11) Non-relative' ;
  VALUE p1_4ffff  1='(1) male' 2='(2) female' ;
  VALUE p1_6ffff  1='(1) With spouse' 2='(2) Unmarried' 3='(3) divorced' 4='(4) Widowed'
                  5='(5) Other' ;
  VALUE p1_7ffff  1='(1) Working or employed' 2='(2) Unemployed or waiting for job'
                  3='(3) Retired' 4='(4) Full-time homemaker'
                  5='(5) Disabled, injured or had chronic disease, unable to work'
                  6='(6) Full-time student' 7='(7) Dropped-out student'
                  8='(8) Pre-school child' 9='(9) Other' ;
  VALUE p1_8ffff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_9ffff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_10fff  1='(1) Chuang' 2='(2) Hui' 3='(3) Uygurs' 4='(4) Yi' 5='(5) Miao' 6='(6) Manchu'
                  7='(7) Other' ;
  VALUE p1_11fff  1='(1) College or above' 2='(2) Professional school'
                  3='(3) Middle level professional, technical or vocational school'
                  4='(4) Senior middle school' 5='(5) Junior middle school'
                  6='(6) 4 or more years of elementary school'
                  7='(7) 1-3 years of elementary school'
                  8='(8) Illiterate or semi-illiterate' ;
  VALUE p1_13fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_14fff  1='(1) Very good' 2='(2) Good' 3='(3) Just so-so' 4='(4) Bad' 5='(5) Very bad' ;
  VALUE p1_15fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_16fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_18fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_21fff  1='(1) Very Healthy' 2='(2) Healthy' 3='(3) So-so' 4='(4) Bad' 5='(5) Very bad' ;
  VALUE p1_22fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_24fff  1='(1) No'
                  2='(2) Village (production team/brigade) cadre (with salary)'
                  3='(3) Township cadre' 4='(4) County cadre' ;
  VALUE p1_25fff  1='(1) No'
                  2='(2) Village (production team/brigade) cadre (with salary)'
                  3='(3) Township cadre' 4='(4) County cadre' ;
  VALUE p1_26fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_27fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_28fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_29fff  1='(1) Yes' 2='(2) No' ;
  VALUE p1_67_1f  1='(1) Farm labor' 2='(2) ordinary worker' 3='(3) skilled worker'
                  4='(4) professional or technical worker'
                  5='(5) Owner or manager of enterprise'
                  6='(6) Village and production team/brigade cadre'
                  7='(7) Village and town cadre'
                  8='(8) Official of party or gov''t office (county or higher level)'
                  9='(9) Ordinary cadre in an enterprise'
                  10='(10) Temporary or short-term contract worker'
                  11='(11) Non-farm individual enterprise owner (e.g. retailer, driver)'
                  12='(12) Employee in Non-farm individual enterprise' 13='(13) Other' ;
  VALUE p1_67_2f  1='(1) Farm labor' 2='(2) ordinary worker' 3='(3) skilled worker'
                  4='(4) professional or technical worker'
                  5='(5) Owner or manager of enterprise'
                  6='(6) Village and production team/brigade cadre'
                  7='(7) Village and town cadre'
                  8='(8) Official of party or gov''t office (county or higher level)'
                  9='(9) Ordinary cadre in an enterprise'
                  10='(10) Temporary or short-term contract worker'
                  11='(11) Non-farm individual enterprise owner (e.g. retailer, driver)'
                  12='(12) Employee in Non-farm individual enterprise' 13='(13) Other' ;
  VALUE p1_68_1f  1='(1) farming household' 2='(2) private enterprise'
                  3='(3) Non-farming individual enterprise'
                  4='(4) township or village collective owned enterprise'
                  5='(5) State-owned enterprise or institution'
                  6='(6) Sino-foreign joint venture' 7='(7) Foreign owned enterprise'
                  8='(8) other kinds enterprise or institution'
                  9='(9) currently no job or unemployed' 10='(10) Other' ;
  VALUE p1_68_2f  1='(1) farming household' 2='(2) private enterprise'
                  3='(3) Non-farming individual enterprise'
                  4='(4) township or village collective owned enterprise'
                  5='(5) State-owned enterprise or institution'
                  6='(6) Sino-foreign joint venture' 7='(7) Foreign owned enterprise'
                  8='(8) other kinds enterprise or institution'
                  9='(9) currently no job or unemployed' 10='(10) Other' ;
  VALUE p1_69_1f  1='(1) Agriculture (planting, herborization)'
                  2='(2) Forestry, husbandry, fishing or water conservancy'
                  3='(3) Mineral and geological survey and prospecting'
                  4='(4) industry' 5='(5) Construction'
                  6='(6) Transportation, communications, posts and telecommunications'
                  7='(7) Commerce and trade' 8='(8) Restaurants & catering'
                  9='(9) materials supply and marketing, warehousing'
                  10='(10) Real estate' 11='(11) Public service'
                  12='(12) Personal services or consulting services'
                  13='(13) public health, sports and social welfare'
                  14='(14) Education, culture, arts and broadcasting'
                  15='(15) Scientific research and professional services'
                  16='(16) Finance and insurance'
                  17='(17) Government agents, party organisations and social groups'
                  18='(18) Other' 19='(19) Don''t know' ;
  VALUE p1_69_2f  1='(1) Agriculture (planting, herborization)'
                  2='(2) Forestry, husbandry, fishing or water conservancy'
                  3='(3) Mineral and geological survey and prospecting'
                  4='(4) industry' 5='(5) Construction'
                  6='(6) Transportation, communications, posts and telecommunications'
                  7='(7) Commerce and trade' 8='(8) Restaurants & catering'
                  9='(9) materials supply and marketing, warehousing'
                  10='(10) Real estate' 11='(11) Public service'
                  12='(12) Personal services or consulting services'
                  13='(13) public health, sports and social welfare'
                  14='(14) Education, culture, arts and broadcasting'
                  15='(15) Scientific research and professional services'
                  16='(16) Finance and insurance'
                  17='(17) Government agents, party organisations and social groups'
                  18='(18) Other' 19='(19) Don''t know' ;
  VALUE p1_70_1f  1='(1) Within village' 2='(2) out of village, within township'
                  3='(3) out of township, within county'
                  4='(4) out of county, within province' 5='(5) out of province' ;
  VALUE p1_70_2f  1='(1) Within village' 2='(2) out of village, within township'
                  3='(3) out of township, within county'
                  4='(4) out of county, within province' 5='(5) out of province' ;
  VALUE p1_71fff  1='(1) indoors (in an office or a factory)' 2='(2) outdoors'
                  3='(3) underground or underwater' 4='(4) other' ;
  VALUE p1_72fff  1='(1) Yes' 2='(2) No' 3='(3) Don''t know' ;
  VALUE p1_73fff  1='(1) Yes' 2='(2) No' 3='(3) Don''t know' ;
  VALUE p1_74fff  1='(1) Home' 2='(2) Dormitory' 3='(3) Shed in construction site'
                  4='(4) Rented housing' 5='(5) Other' ;
  VALUE p1_75fff  1='(1) found it on your own'
                  2='(2) introduced by relative or friend'
                  3='(3) assigned by local labor bureau'
                  4='(4) assigned by township/village collective'
                  5='(5) introduced by labor service company' 6='(6) other' ;
  VALUE p1_76fff  1='(1) Family member or relative' 2='(2) Neighbor' 3='(3) Schoolmate'
                  4='(4) Colleague' 5='(5) Fellow-villager' 6='(6) Other' ;
  VALUE p1_77fff  1='(1) No' 2='(2) Village cadre' 3='(3) Township cadre'
                  4='(4) County or above level cadre' ;
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=286;
INPUT
       COUN 1-6                VILL 7-8
        HOUS 9-10               P1_2 11-12              P1_3 13-14
        P1_4 15                 P1_5 16-21 .2           P1_6 22
        P1_7 23                 P1_8 24                 P1_9 25
        P1_10 26                P1_11 27                P1_12 28-32 .2
        P1_13 33                P1_14 34                P1_15 35
        P1_16 36                P1_17 37-43 .2          P1_18 44
        P1_19 45-50 .2          P1_20 51-53             P1_21 54
        P1_22 55                P1_23 56-64 .2          P1_24 65
        P1_25 66                P1_26 67                P1_27 68
        P1_28 69                P1_29 70                P1_30 71-73
        P1_31 74-78 .2          P1_32 79-84 .2          P1_33 85-89 .2
        P1_34 90-95 .2          P1_35 96-100 .2         P1_36 101-103
        P1_37 104-108 .2        P1_38 109-111           P1_39 112-117 .2
        P1_40 118-122 .2        P1_41 123-125           P1_42 126-131 .2
        P1_43 132-139 .2        P1_44 140-144           P1_45 145-149
        P1_46 150-154           P1_47 155-162 .2        P1_48 163-170 .2
        P1_49 171-175           P1_50 176-180           P1_51 181-185
        P1_52 186-190           P1_53 191-195           P1_54 196-200
        P1_55 201-205           P1_56 206-210           P1_57 211-215
        P1_58 216-220           P1_59 221-225           P1_60 226-229
        P1_61 230-235 .2        P1_62 236-240 .2        P1_63 241-248 .2
        P1_64 249-251           P1_65 252-256 .2        P1_66 257-261
        P1_67_1 262-263         P1_67_2 264-265         P1_68_1 266-267
        P1_68_2 268-269         P1_69_1 270-271         P1_69_2 272-273
        P1_70_1 274             P1_70_2 275             P1_71 276
        P1_72 277               P1_73 278               P1_74 279
        P1_75 280               P1_76 281               P1_77 282
        P1_78 283-286           ;


* SAS LABEL STATEMENT;

LABEL
   COUN    = 'County Number'
   VILL    = 'Village Number'
   HOUS    = 'Household Number'
   P1_2    = 'Member number within household'
   P1_3    = 'Relationship to the head of household'
   P1_4    = 'Sex'
   P1_5    = 'Age'
   P1_6    = 'Marital status'
   P1_7    = 'Status of the members in December of 2002'
   P1_8    = 'Member of the Communist Party'
   P1_9    = 'National ethnic minority'
   P1_10   = 'If yes, which ethnic minority do you belong to'
   P1_11   = 'Educational level'
   P1_12   = 'Years of schooling'
   P1_13   = 'Have you studied in a county or higher level key middle school'
   P1_14   = 'Performance in middle school (if no middle school, use elementary)'
   P1_15   = 'Did members of the household receive any income in 2002?'
   P1_16   = 'Do you smoke?'
   P1_17   = 'If ''yes'' to 112, how much do you spend on smoking on average per month?'
   P1_18   = 'Do you drink alcohol?'
   P1_19   = 'If ''yes'' to 113, how much do you spend on drinking on average per month?'
   P1_20   = 'How many days did you live outside this household in 2002?'
   P1_21   = 'How about your health condition'
   P1_22   = 'Do you suffer from deformity or amentia?'
   P1_23   = 'Total medical expenditure in 2002'
   P1_24   = 'Are you cadre now?'
   P1_25   = 'Have you ever been a cadre?'
   P1_26   = 'Have you joined in PLA?'
   P1_27   = 'Have you been a manager of TVE, or salesman or purchasing man?'
   P1_28   = 'Have you worked in a state-owned marketing enterprise, Supply and Marketing Cooperative, bank, or
Rural Credit Cooperative'
   P1_29   = 'Have you live outside your township at least for one year?'
   P1_30   = 'During harvest season, the working days in planting in the whole year'
   P1_31   = 'During harvest season, working hours per working day in average'
   P1_32   = 'During other season, the working days in planting in the whole year'
   P1_33   = 'During other season, working hours per working day in average'
   P1_34   = 'The working days in raising livestock (including in the yard) in the whole year'
   P1_35   = 'In raising livestock, working hours per working day in average'
   P1_36   = 'The working days in other agriculture activities in the whole year(including forestry, gardening,
husbandry and fishery)'
   P1_37   = 'In other agriculture activities, working hours per working day in average'
   P1_38   = 'Mutual help (Banggong) (days)'
   P1_39   = 'Schooling (days)'
   P1_40   = 'House work (excluding any income-earned activities) (working hours per day)'
   P1_41   = 'Being sick (days)'
   P1_42   = 'Taking care other sick member (days)'
   P1_43   = 'Individual total wage income'
   P1_44   = 'Wage income from working in non-enterprise'
   P1_45   = 'Wage income for serving as village cadre'
   P1_46   = 'Wage income for serving as village teacher'
   P1_47   = 'Wage income from working in the local enterprise'
   P1_48   = 'Wage income from local village and town owned enterprise'
   P1_49   = 'Wage income (local) from the primary sector'
   P1_50   = 'Wage income (local) from the secondary sector'
   P1_51   = 'Wage income (local) from the tertiary sector'
   P1_52   = 'Wage income from working in out-of-village'
   P1_53   = 'Wage income (out of village) from the primary sector'
   P1_54   = 'Wage income (out of village) from the secondary sector'
   P1_55   = 'Wage income (out of village) from the tertiatary sector'
   P1_56   = 'Other wage income'
   P1_57   = 'Total non-wage income of individual member'
   P1_58   = 'Non-wage income from dividend for share-hold from work unit'
   P1_59   = 'Non-wage income from retirement pension and subsidies for retiree'
   P1_60   = 'Non-wage in-kind income from work unit'
   P1_61   = 'Primary job (non-agricultural) Working days'
   P1_62   = 'Primary job (non-agricultural) Average working hours per working day'
   P1_63   = 'Primary job (non-agricultural) Total net income (Yuan)'
   P1_64   = 'Secondary job (non-agricultural) Working days'
   P1_65   = 'Secondary job (non-agricultural) Average working hours per working day'
   P1_66   = 'Secondary job (non-agricultural) Total net income (Yuan)'
   P1_67_1 = 'Primary job (non-agricultural) Occupation category'
   P1_67_2 = 'Secondary job (non-agricultural) Occupation category'
   P1_68_1 = 'Primary job (non-agricultural) Ownership of work unit'
   P1_68_2 = 'Secondary job (non-agricultural) Ownership of work unit'
   P1_69_1 = 'Primary job (non-agricultural) Sector'
   P1_69_2 = 'Secondary job (non-agricultural) Sector'
   P1_70_1 = 'Primary job (non-agricultural) Place of work'
   P1_70_2 = 'Secondary job (non-agricultural) Place of work'
   P1_71   = 'Primary job (non-agricultural) Work environment'
   P1_72   = 'Primary job (non-agricultural) Did you have to work under high temperature or low temperature'
   P1_73   = 'Primary job (non-agricultural) Did you have to work in a toxic environment or other dangerous
situation'
   P1_74   = 'Primary job (non-agricultural) Where did you live'
   P1_75   = 'Primary job (non-agricultural) How did you get the job'
   P1_76   = 'Primary job (non-agricultural) If you found job through a relative or a friend, he/she is your'
   P1_77   = 'Primary job (non-agricultural) Is he/she a cadre'
   P1_78   = 'Primary job (non-agricultural) In which year did you start to take on non-agricultural business as
your primary activity'
        ;


* SAS FORMAT STATEMENT;

/*
  FORMAT P1_3 p1_3ffff. P1_4 p1_4ffff. P1_6 p1_6ffff.
         P1_7 p1_7ffff. P1_8 p1_8ffff. P1_9 p1_9ffff.
         P1_10 p1_10fff. P1_11 p1_11fff. P1_13 p1_13fff.
         P1_14 p1_14fff. P1_15 p1_15fff. P1_16 p1_16fff.
         P1_18 p1_18fff. P1_21 p1_21fff. P1_22 p1_22fff.
         P1_24 p1_24fff. P1_25 p1_25fff. P1_26 p1_26fff.
         P1_27 p1_27fff. P1_28 p1_28fff. P1_29 p1_29fff.
         P1_67_1 p1_67_1f. P1_67_2 p1_67_2f. P1_68_1 p1_68_1f.
         P1_68_2 p1_68_2f. P1_69_1 p1_69_1f. P1_69_2 p1_69_2f.
         P1_70_1 p1_70_1f. P1_70_2 p1_70_2f. P1_71 p1_71fff.
         P1_72 p1_72fff. P1_73 p1_73fff. P1_74 p1_74fff.
         P1_75 p1_75fff. P1_76 p1_76fff. P1_77 p1_77fff.
          ;
*/

RUN ;
