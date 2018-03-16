*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 03012
*                  CHINESE HOUSEHOLD INCOME PROJECT, 1995
*                   (DATASET 0002: RURAL HOUSEHOLD DATA)
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
*  data file is physically located (e.g., "c:\temp\03012-0002-data.txt").
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
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da03012-0002.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=3132.
DATA LIST FILE=DATA /
                 A1 1-12              B101 13-24
              B401 25-36              B402 37-48              B403 49-60
              B404 61-72              B405 73-84              B406 85-96
             B407 97-108           B407A 109-120            B408 121-132
            B409 133-144            B410 145-156            B411 157-168
            B412 169-180           B412A 181-192           B412B 193-204
           B412C 205-216           B412D 217-228            B413 229-240
            B414 241-252          B501_1 253-264          B501_2 265-276
          B501_3 277-288         B501A_1 289-300         B501A_2 301-312
         B501A_3 313-324         B501B_1 325-336         B501B_2 337-348
         B501B_3 349-360         B501C_1 361-372         B501C_2 373-384
         B501C_3 385-396         B501D_1 397-408         B501D_2 409-420
         B501D_3 421-432         B501E_1 433-444         B501E_2 445-456
         B501E_3 457-468         B501F_1 469-480         B501F_2 481-492
         B501F_3 493-504          B502_1 505-516          B502_2 517-528
          B502_3 529-540         B502A_1 541-552         B502A_2 553-564
         B502A_3 565-576         B502B_1 577-588         B502B_2 589-600
         B502B_3 601-612         B502C_1 613-624         B502C_2 625-636
         B502C_3 637-648         B502D_1 649-660         B502D_2 661-672
         B502D_3 673-684         B502E_1 685-696         B502E_2 697-708
         B502E_3 709-720         B502F_1 721-732         B502F_2 733-744
         B502F_3 745-756         B502G_1 757-768         B502G_2 769-780
         B502G_3 781-792         B502H_1 793-804         B502H_2 805-816
         B502H_3 817-828            B503 829-840            B504 841-852
           B504A 853-864           B504B 865-876           B504C 877-888
            B505 889-900            B506 901-912           B506A 913-924
           B506B 925-936            B507 937-948            B508 949-960
            B509 961-972            B510 973-984          B511_1 985-996
         B511_2 997-1008       B511A_1 1009-1020       B511A_2 1021-1032
       B511B_1 1033-1044       B511B_2 1045-1056       B511C_1 1057-1068
       B511C_2 1069-1080       B511D_1 1081-1092       B511D_2 1093-1104
          B600 1105-1116          B601 1117-1128          B602 1129-1140
          B700 1141-1152         B700A 1153-1164          B701 1165-1176
          B702 1177-1188          B703 1189-1200         B703A 1201-1212
         B703B 1213-1224          B704 1225-1236          B705 1237-1248
          B706 1249-1260          B707 1261-1272          B708 1273-1284
         B708A 1285-1296         B708B 1297-1308         B708C 1309-1320
          B709 1321-1332         B709A 1333-1344         B709B 1345-1356
          B710 1357-1368         B710A 1369-1380         B710B 1381-1392
         B710C 1393-1404          B711 1405-1416          B712 1417-1428
         B712A 1429-1440         B712B 1441-1452         B712C 1453-1464
         B7130 1465-1476          B713 1477-1488         B713A 1489-1500
         B7140 1501-1512          B714 1513-1524          B715 1525-1536
          B716 1537-1548          B717 1549-1560          B718 1561-1572
          B801 1573-1584         B801A 1585-1596         B801B 1597-1608
         B801C 1609-1620         B801D 1621-1632         B801E 1633-1644
          B802 1645-1656         B802A 1657-1668         B802B 1669-1680
         B802C 1681-1692          B803 1693-1704         B803A 1705-1716
         B803B 1717-1728         B803C 1729-1740         B803D 1741-1752
         B803E 1753-1764         B803F 1765-1776         B803G 1777-1788
         B803H 1789-1800        B804_1 1801-1812        B804_2 1813-1824
       B804A_1 1825-1836       B804A_2 1837-1848       B804B_1 1849-1860
       B804B_2 1861-1872       B804C_1 1873-1884       B804C_2 1885-1896
       B804D_1 1897-1908       B804D_2 1909-1920       B804E_1 1921-1932
       B804E_2 1933-1944       B804F_1 1945-1956       B804F_2 1957-1968
       B804G_1 1969-1980       B804G_2 1981-1992       B804H_1 1993-2004
       B804H_2 2005-2016          B805 2017-2028         B805A 2029-2040
         B805B 2041-2052         B805C 2053-2064         B805D 2065-2076
         B805E 2077-2088         B805F 2089-2100         B805G 2101-2112
         B805H 2113-2124        B806_1 2125-2136        B806_2 2137-2148
          B807 2149-2160         B807A 2161-2172         B807B 2173-2184
         B807C 2185-2196         B807D 2197-2208         B807E 2209-2220
         B807F 2221-2232         B807G 2233-2244         B808A 2245-2256
         B808B 2257-2268         B808C 2269-2280        B901_1 2281-2292
        B901_2 2293-2304        B901_3 2305-2316       B901A_1 2317-2328
       B901A_2 2329-2340       B901A_3 2341-2352       B901B_1 2353-2364
       B901B_2 2365-2376       B901B_3 2377-2388       B901C_1 2389-2400
       B901C_2 2401-2412       B901C_3 2413-2424       B901D_1 2425-2436
       B901D_2 2437-2448       B901D_3 2449-2460       B901E_1 2461-2472
       B901E_2 2473-2484       B901E_3 2485-2496       B901F_1 2497-2508
       B901F_2 2509-2520       B901F_3 2521-2532       B901G_1 2533-2544
       B901G_2 2545-2556       B901G_3 2557-2568        B902_1 2569-2580
        B902_2 2581-2592        B902_3 2593-2604       B903A_1 2605-2616
       B903A_2 2617-2628       B903A_3 2629-2640       B903B_1 2641-2652
       B903B_2 2653-2664       B903B_3 2665-2676       B904A_1 2677-2688
       B904A_2 2689-2700       B904B_1 2701-2712       B904B_2 2713-2724
       B904C_1 2725-2736       B904C_2 2737-2748       B904D_1 2749-2760
       B904D_2 2761-2772       B904E_1 2773-2784       B904E_2 2785-2796
       B904F_1 2797-2808       B904F_2 2809-2820       B904G_1 2821-2832
       B904G_2 2833-2844       B904A_3 2845-2856       B904A_4 2857-2868
       B904B_3 2869-2880       B904B_4 2881-2892       B904C_3 2893-2904
       B904C_4 2905-2916       B904D_3 2917-2928       B904D_4 2929-2940
       B904E_3 2941-2952       B904E_4 2953-2964       B904F_3 2965-2976
       B904F_4 2977-2988       B904G_3 2989-3000       B904G_4 3001-3012
          B905 3013-3024         B905A 3025-3036         B1001 3037-3048
         B1002 3049-3060         B1003 3061-3072         B1004 3073-3084
      PROVINCE 3085-3096        COUNTY 3097-3108           NHH 3109-3120
        B806_4 3121-3132
   .

* SPSS VARIABLE LABELS COMMAND.

VARIABLE LABELS
   A1        'A1' /
   B101      'B101' /
   B401      'B401' /
   B402      'B402' /
   B403      'B403' /
   B404      'B404' /
   B405      'B405' /
   B406      'B406' /
   B407      'B407' /
   B407A     'B407A' /
   B408      'B408' /
   B409      'B409' /
   B410      'B410' /
   B411      'B411' /
   B412      'B412' /
   B412A     'B412A' /
   B412B     'B412B' /
   B412C     'B412C' /
   B412D     'B412D' /
   B413      'B413' /
   B414      'B414' /
   B501_1    'B501_1' /
   B501_2    'B501_2' /
   B501_3    'B501_3' /
   B501A_1   'B501A_1' /
   B501A_2   'B501A_2' /
   B501A_3   'B501A_3' /
   B501B_1   'B501B_1' /
   B501B_2   'B501B_2' /
   B501B_3   'B501B_3' /
   B501C_1   'B501C_1' /
   B501C_2   'B501C_2' /
   B501C_3   'B501C_3' /
   B501D_1   'B501D_1' /
   B501D_2   'B501D_2' /
   B501D_3   'B501D_3' /
   B501E_1   'B501E_1' /
   B501E_2   'B501E_2' /
   B501E_3   'B501E_3' /
   B501F_1   'B501F_1' /
   B501F_2   'B501F_2' /
   B501F_3   'B501F_3' /
   B502_1    'B502_1' /
   B502_2    'B502_2' /
   B502_3    'B502_3' /
   B502A_1   'B502A_1' /
   B502A_2   'B502A_2' /
   B502A_3   'B502A_3' /
   B502B_1   'B502B_1' /
   B502B_2   'B502B_2' /
   B502B_3   'B502B_3' /
   B502C_1   'B502C_1' /
   B502C_2   'B502C_2' /
   B502C_3   'B502C_3' /
   B502D_1   'B502D_1' /
   B502D_2   'B502D_2' /
   B502D_3   'B502D_3' /
   B502E_1   'B502E_1' /
   B502E_2   'B502E_2' /
   B502E_3   'B502E_3' /
   B502F_1   'B502F_1' /
   B502F_2   'B502F_2' /
   B502F_3   'B502F_3' /
   B502G_1   'B502G_1' /
   B502G_2   'B502G_2' /
   B502G_3   'B502G_3' /
   B502H_1   'B502H_1' /
   B502H_2   'B502H_2' /
   B502H_3   'B502H_3' /
   B503      'B503' /
   B504      'B504' /
   B504A     'B504A' /
   B504B     'B504B' /
   B504C     'B504C' /
   B505      'B505' /
   B506      'B506' /
   B506A     'B506A' /
   B506B     'B506B' /
   B507      'B507' /
   B508      'B508' /
   B509      'B509' /
   B510      'B510' /
   B511_1    'B511_1' /
   B511_2    'B511_2' /
   B511A_1   'B511A_1' /
   B511A_2   'B511A_2' /
   B511B_1   'B511B_1' /
   B511B_2   'B511B_2' /
   B511C_1   'B511C_1' /
   B511C_2   'B511C_2' /
   B511D_1   'B511D_1' /
   B511D_2   'B511D_2' /
   B600      'B600' /
   B601      'B601' /
   B602      'B602' /
   B700      'B700' /
   B700A     'B700A' /
   B701      'B701' /
   B702      'B702' /
   B703      'B703' /
   B703A     'B703A' /
   B703B     'B703B' /
   B704      'B704' /
   B705      'B705' /
   B706      'B706' /
   B707      'B707' /
   B708      'B708' /
   B708A     'B708A' /
   B708B     'B708B' /
   B708C     'B708C' /
   B709      'B709' /
   B709A     'B709A' /
   B709B     'B709B' /
   B710      'B710' /
   B710A     'B710A' /
   B710B     'B710B' /
   B710C     'B710C' /
   B711      'B711' /
   B712      'B712' /
   B712A     'B712A' /
   B712B     'B712B' /
   B712C     'B712C' /
   B7130     'B7130' /
   B713      'B713' /
   B713A     'B713A' /
   B7140     'B7140' /
   B714      'B714' /
   B715      'B715' /
   B716      'B716' /
   B717      'B717' /
   B718      'B718' /
   B801      'B801' /
   B801A     'B801A' /
   B801B     'B801B' /
   B801C     'B801C' /
   B801D     'B801D' /
   B801E     'B801E' /
   B802      'B802' /
   B802A     'B802A' /
   B802B     'B802B' /
   B802C     'B802C' /
   B803      'B803' /
   B803A     'B803A' /
   B803B     'B803B' /
   B803C     'B803C' /
   B803D     'B803D' /
   B803E     'B803E' /
   B803F     'B803F' /
   B803G     'B803G' /
   B803H     'B803H' /
   B804_1    'B804_1' /
   B804_2    'B804_2' /
   B804A_1   'B804A_1' /
   B804A_2   'B804A_2' /
   B804B_1   'B804B_1' /
   B804B_2   'B804B_2' /
   B804C_1   'B804C_1' /
   B804C_2   'B804C_2' /
   B804D_1   'B804D_1' /
   B804D_2   'B804D_2' /
   B804E_1   'B804E_1' /
   B804E_2   'B804E_2' /
   B804F_1   'B804F_1' /
   B804F_2   'B804F_2' /
   B804G_1   'B804G_1' /
   B804G_2   'B804G_2' /
   B804H_1   'B804H_1' /
   B804H_2   'B804H_2' /
   B805      'B805' /
   B805A     'B805A' /
   B805B     'B805B' /
   B805C     'B805C' /
   B805D     'B805D' /
   B805E     'B805E' /
   B805F     'B805F' /
   B805G     'B805G' /
   B805H     'B805H' /
   B806_1    'B806_1' /
   B806_2    'B806_2' /
   B807      'B807' /
   B807A     'B807A' /
   B807B     'B807B' /
   B807C     'B807C' /
   B807D     'B807D' /
   B807E     'B807E' /
   B807F     'B807F' /
   B807G     'B807G' /
   B808A     'B808A' /
   B808B     'B808B' /
   B808C     'B808C' /
   B901_1    'B901_1' /
   B901_2    'B901_2' /
   B901_3    'B901_3' /
   B901A_1   'B901A_1' /
   B901A_2   'B901A_2' /
   B901A_3   'B901A_3' /
   B901B_1   'B901B_1' /
   B901B_2   'B901B_2' /
   B901B_3   'B901B_3' /
   B901C_1   'B901C_1' /
   B901C_2   'B901C_2' /
   B901C_3   'B901C_3' /
   B901D_1   'B901D_1' /
   B901D_2   'B901D_2' /
   B901D_3   'B901D_3' /
   B901E_1   'B901E_1' /
   B901E_2   'B901E_2' /
   B901E_3   'B901E_3' /
   B901F_1   'B901F_1' /
   B901F_2   'B901F_2' /
   B901F_3   'B901F_3' /
   B901G_1   'B901G_1' /
   B901G_2   'B901G_2' /
   B901G_3   'B901G_3' /
   B902_1    'B902_1' /
   B902_2    'B902_2' /
   B902_3    'B902_3' /
   B903A_1   'B903A_1' /
   B903A_2   'B903A_2' /
   B903A_3   'B903A_3' /
   B903B_1   'B903B_1' /
   B903B_2   'B903B_2' /
   B903B_3   'B903B_3' /
   B904A_1   'B904A_1' /
   B904A_2   'B904A_2' /
   B904B_1   'B904B_1' /
   B904B_2   'B904B_2' /
   B904C_1   'B904C_1' /
   B904C_2   'B904C_2' /
   B904D_1   'B904D_1' /
   B904D_2   'B904D_2' /
   B904E_1   'B904E_1' /
   B904E_2   'B904E_2' /
   B904F_1   'B904F_1' /
   B904F_2   'B904F_2' /
   B904G_1   'B904G_1' /
   B904G_2   'B904G_2' /
   B904A_3   'B904A_3' /
   B904A_4   'B904A_4' /
   B904B_3   'B904B_3' /
   B904B_4   'B904B_4' /
   B904C_3   'B904C_3' /
   B904C_4   'B904C_4' /
   B904D_3   'B904D_3' /
   B904D_4   'B904D_4' /
   B904E_3   'B904E_3' /
   B904E_4   'B904E_4' /
   B904F_3   'B904F_3' /
   B904F_4   'B904F_4' /
   B904G_3   'B904G_3' /
   B904G_4   'B904G_4' /
   B905      'B905' /
   B905A     'B905A' /
   B1001     'B1001' /
   B1002     'B1002' /
   B1003     'B1003' /
   B1004     'B1004' /
   PROVINCE  'PROVINCE' /
   COUNTY    'COUNTY' /
   NHH       'NHH' /
   B806_4    'B806_4' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   B401      0 'unkown code' 1 'flat' 2 'hilly' 3 'mountainous' /
   B402      0 'unkown code' 1 'yes' 2 'no' /
   B403      0 'unkown code' 1 'yes' 2 'no' /
   B404      0 'unkown code' 1 'yes' 2 'no' /
   B405      0 'unkown code' 1 'yes' 2 'no' /
   B406      0 'unkown code' 1 'yes' 2 'no' /
   B407      0 'unkown code' 1 'yes' 2 'no' 3 'do not know' /
   B407A     0 'unkown code' 1 'the national govt.' 2 'province'
             3 'do not know' /
   B408      0 'unkown code' 1 'yes' 2 'no' /
   B409      0 'unkown code' 1 'yes' 2 'no' /
   B410      0 'unkown code' 1 'electric' 2 'lacks electric lighting' /
   B411      0 'unkown code' 1 'tap' 2 'well' 3 'other' /
   B1003     1 'privately owned' 2 'rented private dwelling'
             3 'publicly owned dwelling' 4 'other' /
   B1004     0 'unkown code' 1 'before 1978' 2 'between 1978 and 1984'
             3 'between 1985 and 1989' 4 'after 1989' /
   .

EXECUTE.

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
