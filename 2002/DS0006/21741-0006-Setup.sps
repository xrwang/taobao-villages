*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 21741
*                  CHINESE HOUSEHOLD INCOME PROJECT, 2002
*           (DATASET 0006: RURAL INDIVIDUAL INCOME, CONSUMPTION,
*                           AND EMPLOYMENT DATA)
* 
*
*  SPSS setup sections are provided for the ASCII version of this data
*  collection.  These sections are listed below:
*
*  DATA LIST:  assigns the name, type, decimal specification (if any),
*  and specifies the beginning and ending column locations for each
*  variable in the data file. Users must replace the "data-filename"
*  in the DATA LIST statement with a filename specifying the directory
*  on the user's computer system in which the downloaded and unzipped
*  data file is physically located (e.g., "c:\temp\21741-0006-data.txt").
*
*  VARIABLE LABELS:  assigns descriptive labels to all variables.
*  Labels and variable names may be identical for some data files.
*
*  MISSING VALUES: declares user-defined missing values. Not all
*  variables in this data set necessarily have user-defined missing
*  values. These values can be treated specially in data transformations,
*  statistical calculations, and case selection.
*
*  VALUE LABELS: assigns descriptive labels to codes found in the data
*  file.  Not all codes necessarily have assigned value labels.
*
*  NOTE:  Users should modify this setup file to suit their specific 
*  needs. The MISSING VALUES section has been commented out (i.e., '*').
*  To include the MISSING VALUES section in the final SPSS setup, remove 
*  the comment indicators from the desired section.
*
*  CREATING A PERMANENT SPSS DATA FILE: If users wish to create and save
*  an SPSS data file for further analysis using SPSS for Windows, the
*  necessary "SAVE OUTFILE" command is provided in the last line of
*  this file.  To activate the command, users must delete the leading
*  asterisk (*) and replace "spss-filename" with a filename specifying
*  the location on the user's computer system to which the new data file
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da21741-0006.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=286.
DATA LIST FILE=DATA /
                COUN 1-6                VILL 7-8
               HOUS 9-10              P1_2 11-12              P1_3 13-14
                 P1_4 15          P1_5 16-21 (2)                 P1_6 22
                 P1_7 23                 P1_8 24                 P1_9 25
                P1_10 26                P1_11 27         P1_12 28-32 (2)
                P1_13 33                P1_14 34                P1_15 35
                P1_16 36         P1_17 37-43 (2)                P1_18 44
         P1_19 45-50 (2)             P1_20 51-53                P1_21 54
                P1_22 55         P1_23 56-64 (2)                P1_24 65
                P1_25 66                P1_26 67                P1_27 68
                P1_28 69                P1_29 70             P1_30 71-73
         P1_31 74-78 (2)         P1_32 79-84 (2)         P1_33 85-89 (2)
         P1_34 90-95 (2)        P1_35 96-100 (2)           P1_36 101-103
       P1_37 104-108 (2)           P1_38 109-111       P1_39 112-117 (2)
       P1_40 118-122 (2)           P1_41 123-125       P1_42 126-131 (2)
       P1_43 132-139 (2)           P1_44 140-144           P1_45 145-149
           P1_46 150-154       P1_47 155-162 (2)       P1_48 163-170 (2)
           P1_49 171-175           P1_50 176-180           P1_51 181-185
           P1_52 186-190           P1_53 191-195           P1_54 196-200
           P1_55 201-205           P1_56 206-210           P1_57 211-215
           P1_58 216-220           P1_59 221-225           P1_60 226-229
       P1_61 230-235 (2)       P1_62 236-240 (2)       P1_63 241-248 (2)
           P1_64 249-251       P1_65 252-256 (2)           P1_66 257-261
         P1_67_1 262-263         P1_67_2 264-265         P1_68_1 266-267
         P1_68_2 268-269         P1_69_1 270-271         P1_69_2 272-273
             P1_70_1 274             P1_70_2 275               P1_71 276
               P1_72 277               P1_73 278               P1_74 279
               P1_75 280               P1_76 281               P1_77 282
           P1_78 283-286
   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   COUN      'County Number' /
   VILL      'Village Number' /
   HOUS      'Household Number' /
   P1_2      'Member number within household' /
   P1_3      'Relationship to the head of household' /
   P1_4      'Sex' /
   P1_5      'Age' /
   P1_6      'Marital status' /
   P1_7      'Status of the members in December of 2002' /
   P1_8      'Member of the Communist Party' /
   P1_9      'National ethnic minority' /
   P1_10     'If yes, which ethnic minority do you belong to' /
   P1_11     'Educational level' /
   P1_12     'Years of schooling' /
   P1_13     'Have you studied in a county or higher level key middle school' /
   P1_14     'Performance in middle school (if no middle school, use'+
     ' elementary)'/
   P1_15     'Did members of the household receive any income in 2002?' /
   P1_16     'Do you smoke?' /
   P1_17     'If ''yes'' to 112, how much do you spend on smoking on'+
     ' average per month?'/
   P1_18     'Do you drink alcohol?' /
   P1_19     'If ''yes'' to 113, how much do you spend on drinking on'+
     ' average per month?'/
   P1_20     'How many days did you live outside this household in 2002?' /
   P1_21     'How about your health condition' /
   P1_22     'Do you suffer from deformity or amentia?' /
   P1_23     'Total medical expenditure in 2002' /
   P1_24     'Are you cadre now?' /
   P1_25     'Have you ever been a cadre?' /
   P1_26     'Have you joined in PLA?' /
   P1_27     'Have you been a manager of TVE, or salesman or purchasing man?' /
   P1_28     'Have you worked in a state-owned marketing enterprise,'+
     ' Supply and Marketing Cooperative, bank, or Rural Credit Cooperative'/
   P1_29     'Have you live outside your township at least for one year?' /
   P1_30     'During harvest season, the working days in planting in'+
     ' the whole year'/
   P1_31     'During harvest season, working hours per working day'+
     ' in average'/
   P1_32     'During other season, the working days in planting in the'+
     ' whole year'/
   P1_33     'During other season, working hours per working day in average' /
   P1_34     'The working days in raising livestock (including in the'+
     ' yard) in the whole year'/
   P1_35     'In raising livestock, working hours per working day in average' /
   P1_36     'The working days in other agriculture activities in the'+
     ' whole year(including forestry, gardening, husbandry and fishery)'/
   P1_37     'In other agriculture activities, working hours per working'+
     ' day in average'/
   P1_38     'Mutual help (Banggong) (days)' /
   P1_39     'Schooling (days)' /
   P1_40     'House work (excluding any income-earned activities)'+
     ' (working hours per day)'/
   P1_41     'Being sick (days)' /
   P1_42     'Taking care other sick member (days)' /
   P1_43     'Individual total wage income' /
   P1_44     'Wage income from working in non-enterprise' /
   P1_45     'Wage income for serving as village cadre' /
   P1_46     'Wage income for serving as village teacher' /
   P1_47     'Wage income from working in the local enterprise' /
   P1_48     'Wage income from local village and town owned enterprise' /
   P1_49     'Wage income (local) from the primary sector' /
   P1_50     'Wage income (local) from the secondary sector' /
   P1_51     'Wage income (local) from the tertiary sector' /
   P1_52     'Wage income from working in out-of-village' /
   P1_53     'Wage income (out of village) from the primary sector' /
   P1_54     'Wage income (out of village) from the secondary sector' /
   P1_55     'Wage income (out of village) from the tertiatary sector' /
   P1_56     'Other wage income' /
   P1_57     'Total non-wage income of individual member' /
   P1_58     'Non-wage income from dividend for share-hold from work unit' /
   P1_59     'Non-wage income from retirement pension and subsidies'+
     ' for retiree'/
   P1_60     'Non-wage in-kind income from work unit' /
   P1_61     'Primary job (non-agricultural) Working days' /
   P1_62     'Primary job (non-agricultural) Average working hours per'+
     ' working day'/
   P1_63     'Primary job (non-agricultural) Total net income (Yuan)' /
   P1_64     'Secondary job (non-agricultural) Working days' /
   P1_65     'Secondary job (non-agricultural) Average working hours'+
     ' per working day'/
   P1_66     'Secondary job (non-agricultural) Total net income (Yuan)' /
   P1_67_1   'Primary job (non-agricultural) Occupation category' /
   P1_67_2   'Secondary job (non-agricultural) Occupation category' /
   P1_68_1   'Primary job (non-agricultural) Ownership of work unit' /
   P1_68_2   'Secondary job (non-agricultural) Ownership of work unit' /
   P1_69_1   'Primary job (non-agricultural) Sector' /
   P1_69_2   'Secondary job (non-agricultural) Sector' /
   P1_70_1   'Primary job (non-agricultural) Place of work' /
   P1_70_2   'Secondary job (non-agricultural) Place of work' /
   P1_71     'Primary job (non-agricultural) Work environment' /
   P1_72     'Primary job (non-agricultural) Did you have to work under'+
     ' high temperature or low temperature'/
   P1_73     'Primary job (non-agricultural) Did you have to work in a'+
     ' toxic environment or other dangerous situation'/
   P1_74     'Primary job (non-agricultural) Where did you live' /
   P1_75     'Primary job (non-agricultural) How did you get the job' /
   P1_76     'Primary job (non-agricultural) If you found job through'+
     ' a relative or a friend, he/she is your'/
   P1_77     'Primary job (non-agricultural) Is he/she a cadre' /
   P1_78     'Primary job (non-agricultural) In which year did you start'+
     ' to take on non-agricultural business as your primary activity'/
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   P1_3      1 'Self' 2 'Spouse' 3 'Child' 4 'Child-in-law' 5 'Grandchild'
             6 'Parent' 7 'Parent-in-law' 8 'Grandparent'
             9 'Brother or sister' 10 'Other relative' 11 'Non-relative' /
   P1_4      1 'male' 2 'female' /
   P1_6      1 'With spouse' 2 'Unmarried' 3 'divorced' 4 'Widowed' 5 'Other'
             /
   P1_7      1 'Working or employed' 2 'Unemployed or waiting for job'
             3 'Retired' 4 'Full-time homemaker'
             5 'Disabled, injured or had chronic disease, unable to work'
             6 'Full-time student' 7 'Dropped-out student'
             8 'Pre-school child' 9 'Other' /
   P1_8      1 'Yes' 2 'No' /
   P1_9      1 'Yes' 2 'No' /
   P1_10     1 'Chuang' 2 'Hui' 3 'Uygurs' 4 'Yi' 5 'Miao' 6 'Manchu'
             7 'Other' /
   P1_11     1 'College or above' 2 'Professional school'
             3 'Middle level professional, technical or vocational school'
             4 'Senior middle school' 5 'Junior middle school'
             6 '4 or more years of elementary school'
             7 '1-3 years of elementary school'
             8 'Illiterate or semi-illiterate' /
   P1_13     1 'Yes' 2 'No' /
   P1_14     1 'Very good' 2 'Good' 3 'Just so-so' 4 'Bad' 5 'Very bad' /
   P1_15     1 'Yes' 2 'No' /
   P1_16     1 'Yes' 2 'No' /
   P1_18     1 'Yes' 2 'No' /
   P1_21     1 'Very Healthy' 2 'Healthy' 3 'So-so' 4 'Bad' 5 'Very bad' /
   P1_22     1 'Yes' 2 'No' /
   P1_24     1 'No' 2 'Village (production team/brigade) cadre (with salary)'
             3 'Township cadre' 4 'County cadre' /
   P1_25     1 'No' 2 'Village (production team/brigade) cadre (with salary)'
             3 'Township cadre' 4 'County cadre' /
   P1_26     1 'Yes' 2 'No' /
   P1_27     1 'Yes' 2 'No' /
   P1_28     1 'Yes' 2 'No' /
   P1_29     1 'Yes' 2 'No' /
   P1_67_1   1 'Farm labor' 2 'ordinary worker' 3 'skilled worker'
             4 'professional or technical worker'
             5 'Owner or manager of enterprise'
             6 'Village and production team/brigade cadre'
             7 'Village and town cadre'
             8 'Official of party or gov''t office (county or higher level)'
             9 'Ordinary cadre in an enterprise'
             10 'Temporary or short-term contract worker'
            11 'Non-farm individual enterprise owner (e.g. retailer, driver)'
             12 'Employee in Non-farm individual enterprise' 13 'Other' /
   P1_67_2   1 'Farm labor' 2 'ordinary worker' 3 'skilled worker'
             4 'professional or technical worker'
             5 'Owner or manager of enterprise'
             6 'Village and production team/brigade cadre'
             7 'Village and town cadre'
             8 'Official of party or gov''t office (county or higher level)'
             9 'Ordinary cadre in an enterprise'
             10 'Temporary or short-term contract worker'
            11 'Non-farm individual enterprise owner (e.g. retailer, driver)'
             12 'Employee in Non-farm individual enterprise' 13 'Other' /
   P1_68_1   1 'farming household' 2 'private enterprise'
             3 'Non-farming individual enterprise'
             4 'township or village collective owned enterprise'
             5 'State-owned enterprise or institution'
             6 'Sino-foreign joint venture' 7 'Foreign owned enterprise'
             8 'other kinds enterprise or institution'
             9 'currently no job or unemployed' 10 'Other' /
   P1_68_2   1 'farming household' 2 'private enterprise'
             3 'Non-farming individual enterprise'
             4 'township or village collective owned enterprise'
             5 'State-owned enterprise or institution'
             6 'Sino-foreign joint venture' 7 'Foreign owned enterprise'
             8 'other kinds enterprise or institution'
             9 'currently no job or unemployed' 10 'Other' /
   P1_69_1   1 'Agriculture (planting, herborization)'
             2 'Forestry, husbandry, fishing or water conservancy'
             3 'Mineral and geological survey and prospecting' 4 'industry'
             5 'Construction'
             6 'Transportation, communications, posts and telecommunications'
             7 'Commerce and trade' 8 'Restaurants & catering'
             9 'materials supply and marketing, warehousing' 10 'Real estate'
             11 'Public service'
             12 'Personal services or consulting services'
             13 'public health, sports and social welfare'
             14 'Education, culture, arts and broadcasting'
             15 'Scientific research and professional services'
             16 'Finance and insurance'
             17 'Government agents, party organisations and social groups'
             18 'Other' 19 'Don''t know' /
   P1_69_2   1 'Agriculture (planting, herborization)'
             2 'Forestry, husbandry, fishing or water conservancy'
             3 'Mineral and geological survey and prospecting' 4 'industry'
             5 'Construction'
             6 'Transportation, communications, posts and telecommunications'
             7 'Commerce and trade' 8 'Restaurants & catering'
             9 'materials supply and marketing, warehousing' 10 'Real estate'
             11 'Public service'
             12 'Personal services or consulting services'
             13 'public health, sports and social welfare'
             14 'Education, culture, arts and broadcasting'
             15 'Scientific research and professional services'
             16 'Finance and insurance'
             17 'Government agents, party organisations and social groups'
             18 'Other' 19 'Don''t know' /
   P1_70_1   1 'Within village' 2 'out of village, within township'
             3 'out of township, within county'
             4 'out of county, within province' 5 'out of province' /
   P1_70_2   1 'Within village' 2 'out of village, within township'
             3 'out of township, within county'
             4 'out of county, within province' 5 'out of province' /
   P1_71     1 'indoors (in an office or a factory)' 2 'outdoors'
             3 'underground or underwater' 4 'other' /
   P1_72     1 'Yes' 2 'No' 3 'Don''t know' /
   P1_73     1 'Yes' 2 'No' 3 'Don''t know' /
   P1_74     1 'Home' 2 'Dormitory' 3 'Shed in construction site'
             4 'Rented housing' 5 'Other' /
   P1_75     1 'found it on your own' 2 'introduced by relative or friend'
             3 'assigned by local labor bureau'
             4 'assigned by township/village collective'
             5 'introduced by labor service company' 6 'other' /
   P1_76     1 'Family member or relative' 2 'Neighbor' 3 'Schoolmate'
             4 'Colleague' 5 'Fellow-villager' 6 'Other' /
   P1_77     1 'No' 2 'Village cadre' 3 'Township cadre'
             4 'County or above level cadre' /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
