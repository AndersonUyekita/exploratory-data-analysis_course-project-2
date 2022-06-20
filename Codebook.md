`Course Project 2` Exploratory Data Analysis
================

-   👨🏻‍💻 Author: Anderson H Uyekita
-   📚 Specialization: <a
    href="https://www.coursera.org/specializations/data-science-foundations-r"
    target="_blank" rel="noopener">Data Science: Foundations using R
    Specialization</a>
-   📖 Course:
    <a href="https://www.coursera.org/learn/exploratory-data-analysis"
    target="_blank" rel="noopener">Exploratory Data Analysis</a>
    -   🧑‍🏫 Instructor: Roger D Peng
-   📆 Week 4
    -   🚦 Start: Wednesday, 15 June 2022
    -   🏁 Finish: Sunday, 19 June 2022
-   🌎 Rpubs: [Interactive
    Document](https://rpubs.com/AndersonUyekita/course-project-2_exploratory-data-analysis)
-   📋 Instructions: [Project Instructions](./instructions.md)
-   📄 README: [README.md](./README.md)

## Codebook

1.  [Requirements](#requirements)
2.  [Scripts](#scripts)
    1.  [Plot 1](#plot1)
    2.  [Plot 2](#plot2)
    3.  [Plot 3](#plot3)
    4.  [Plot 4](#plot4)
    5.  [Plot 5](#plot5)
    6.  [Plot 6](#plot6)
3.  Output and Input Details
    1.  [Inputs](#inputs)
        1.  [NEI](#nei)
        2.  [SCC](#scc)
    2.  [Output](#output)

### 1. Requirements <a href="" id="requirements"></a>

It is necessary to install the following packages to reproduce this
Course Project 2.

1.  `ggplot2`
2.  `tidyverse`
3.  `magrittr`
4.  `cowplot`

Also, those following scripts will use the standard packages from R.

1.  `base`
2.  `graphic`
3.  `utils`
4.  `grDevices`

It is mandatory to have access to the internet if you are willing to
reproduce it.

### 2. Scripts <a href="" id="scripts"></a>

This Course Project 2 required the development of 6 scripts to plot and
export six png files.

#### 2.1. Description of functionality of `plot1.R` <a href="" id="plot1"></a>

1.  Create the folder `data` to keep all files downloaded in it;
2.  Download the zipped file (FNEI_data.zip) using `download.file()`;
3.  If the raw data is already downloaded, the script will not download
    any file;
4.  Unzipping the `FNEI_data.zip` into the `data` folder;
5.  Loading the `summarySCC_PM25.rds` file using `base::readRDS` and
    naming it as `NEI`;
6.  Loading the `Source_Classification_Code.rds` file using
    `base::readRDS` and naming it as `SCC`;
7.  Summarizing the NEI dataset grouping by year and then calculating
    the Total emissions of PM2.5;
8.  Plotting a barplot using the base graphic system;
9.  Saving the plot as a `png` file;

#### 2.2. Description of functionality of `plot2.R` <a href="" id="plot2"></a>

1.  Creating the folder `data` to keep all files downloaded in it;
2.  Downloading the zipped file (FNEI_data.zip) using `download.file()`;
3.  If the raw data is already downloaded, the script will not download
    any file;
4.  Unzipping the `FNEI_data.zip` into the `data` folder;
5.  Loading the `summarySCC_PM25.rds` file using `base::readRDS` and
    naming it as `NEI`;
6.  Loading the `Source_Classification_Code.rds` file using
    `base::readRDS` and naming it as `SCC`;
7.  Subsetting the NEI dataset to filter only fips equal to 24510
    (Baltimore City);
8.  Summarizing the previous dataset grouping by year and then
    calculating the Total emissions of PM2.5;
9.  Plotting a line plot using the base graphic system;
10. Saving the plot as a `png` file;

#### 2.3. Description of functionality of `plot3.R` <a href="" id="plot3"></a>

1.  Creating the folder `data` to keep all files downloaded in it;
2.  Downloading the zipped file (FNEI_data.zip) using `download.file()`;
3.  If the raw data is already downloaded, the script will not download
    any file;
4.  Unzipping the `FNEI_data.zip` into the `data` folder;
5.  Loading the `summarySCC_PM25.rds` file using `base::readRDS` and
    naming it as `NEI`;
6.  Loading the `Source_Classification_Code.rds` file using
    `base::readRDS` and naming it as `SCC`;
7.  Subsetting the NEI dataset to filter only fips equal to 24510
    (Baltimore City);
8.  Summarizing the previous dataset grouping by year and then
    calculating the Total emissions of PM2.5;
9.  Plotting a line plot using the `ggplot2` package;
10. Setting the aesthetic from geom_line as `color = type`;
11. Saving the plot as a `png` file;

#### 2.4. Description of functionality of `plot4.R` <a href="" id="plot4"></a>

1.  Creating the folder `data` to keep all files downloaded in it;
2.  Downloading the zipped file (FNEI_data.zip) using `download.file()`;
3.  If the raw data is already downloaded, the script will not download
    any file;
4.  Unzipping the `FNEI_data.zip` into the `data` folder;
5.  Loading the `summarySCC_PM25.rds` file using `base::readRDS` and
    naming it as `NEI`;
6.  Loading the `Source_Classification_Code.rds` file using
    `base::readRDS` and naming it as `SCC`;
7.  Subsetting the SCC dataset to filter the Coal source of PM2.5 found
    in EI.Sector variable;
8.  Subsetting the NEI dataset to filter only the given SCC from the
    previous dataset;
9.  Merging both previous datasets to create a new column about
    EI.Sector;
10. Summarizing the previous dataset grouping by year and EI.The sector
    then calculating the Total emissions of PM2.5;
11. Plotting a stacked bar plot using the `ggplot2` package;
12. Setting the geom_bar to have `position = "stack"`;
13. Saving the plot as a `png` file;

#### 2.5. Description of functionality of `plot5.R` <a href="" id="plot5"></a>

1.  Creating the folder `data` to keep all files downloaded in it;
2.  Downloading the zipped file (FNEI_data.zip) using `download.file()`;
3.  If the raw data is already downloaded, the script will not download
    any file;
4.  Unzipping the `FNEI_data.zip` into the `data` folder;
5.  Loading the `summarySCC_PM25.rds` file using `base::readRDS` and
    naming it as `NEI`;
6.  Loading the `Source_Classification_Code.rds` file using
    `base::readRDS` and naming it as `SCC`;
7.  Subsetting the NEI dataset to filter only fips equal to 24510
    (Baltimore City) and type equal to ON-ROAD;
8.  Summarizing the previous dataset grouping by year and then
    calculating the Total emissions of PM2.5;
9.  Plotting a bar plot using the `ggplot2` package;
10. Saving the plot as a `png` file;

#### 2.6. Description of functionality of `plot6.R` <a href="" id="plot6"></a>

1.  Creating the folder `data` to keep all files downloaded in it;
2.  Downloading the zipped file (FNEI_data.zip) using `download.file()`;
3.  If the raw data is already downloaded, the script will not download
    any file;
4.  Unzipping the `FNEI_data.zip` into the `data` folder;
5.  Loading the `summarySCC_PM25.rds` file using `base::readRDS` and
    naming it as `NEI`;
6.  Loading the `Source_Classification_Code.rds` file using
    `base::readRDS` and naming it as `SCC`;
7.  Subsetting the NEI dataset to filter only fips equal to 24510 or
    06037 (Baltimore City and Los Angeles County) and type equal to
    ON-ROAD;
8.  Creating an auxiliary dataset to store the fips and city;
9.  Merging both previous datasets to create a new column about the
    city;
10. Summarizing the previous dataset grouping by year and then
    calculating the Total emissions of PM2.5;
11. Plotting a bar plot using the `ggplot2` package;
12. Saving the plot as a `png` file;

## 3. Output and Input Details

Here will be described some aspects of output and inputs.

### 3.1. Inputs <a href="" id="inputs"></a>

Course Project 2 will only use one zipped file, the `FNEI_data.zip`. It
has 2 (two) `.rds` compressed files:

-   `summarySCC_PM25.rds`, and;
-   `Source_Classification_Code.rds`.

#### 3.1.1. NEI <a href="" id="nei"></a>

The data from `summarySCC_PM25.rds` is already tidy, and following the
assignment instruction, I have named this object `NEI`.

-   Size: 732,232,328 Bytes (698.3112 Megabytes)
-   Rows: 6,497,651, and;
-   Columns: 6.

I have calculated the object size in Bytes using the `object_size()`
from the `pryr` package.

The columns variables in the NEI dataset: fips, SCC, Pollutant,
Emissions, type, year

**Head**

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:left;">
fips
</th>
<th style="text-align:left;">
SCC
</th>
<th style="text-align:left;">
Pollutant
</th>
<th style="text-align:right;">
Emissions
</th>
<th style="text-align:left;">
type
</th>
<th style="text-align:right;">
year
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
4
</td>
<td style="text-align:left;">
09001
</td>
<td style="text-align:left;">
10100401
</td>
<td style="text-align:left;">
PM25-PRI
</td>
<td style="text-align:right;">
15.714
</td>
<td style="text-align:left;">
POINT
</td>
<td style="text-align:right;">
1999
</td>
</tr>
<tr>
<td style="text-align:left;">
8
</td>
<td style="text-align:left;">
09001
</td>
<td style="text-align:left;">
10100404
</td>
<td style="text-align:left;">
PM25-PRI
</td>
<td style="text-align:right;">
234.178
</td>
<td style="text-align:left;">
POINT
</td>
<td style="text-align:right;">
1999
</td>
</tr>
<tr>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
09001
</td>
<td style="text-align:left;">
10100501
</td>
<td style="text-align:left;">
PM25-PRI
</td>
<td style="text-align:right;">
0.128
</td>
<td style="text-align:left;">
POINT
</td>
<td style="text-align:right;">
1999
</td>
</tr>
<tr>
<td style="text-align:left;">
16
</td>
<td style="text-align:left;">
09001
</td>
<td style="text-align:left;">
10200401
</td>
<td style="text-align:left;">
PM25-PRI
</td>
<td style="text-align:right;">
2.036
</td>
<td style="text-align:left;">
POINT
</td>
<td style="text-align:right;">
1999
</td>
</tr>
<tr>
<td style="text-align:left;">
20
</td>
<td style="text-align:left;">
09001
</td>
<td style="text-align:left;">
10200504
</td>
<td style="text-align:left;">
PM25-PRI
</td>
<td style="text-align:right;">
0.388
</td>
<td style="text-align:left;">
POINT
</td>
<td style="text-align:right;">
1999
</td>
</tr>
<tr>
<td style="text-align:left;">
24
</td>
<td style="text-align:left;">
09001
</td>
<td style="text-align:left;">
10200602
</td>
<td style="text-align:left;">
PM25-PRI
</td>
<td style="text-align:right;">
1.490
</td>
<td style="text-align:left;">
POINT
</td>
<td style="text-align:right;">
1999
</td>
</tr>
</tbody>
</table>

**Strucuture**

    ## 'data.frame':    6497651 obs. of  6 variables:
    ##  $ fips     : chr  "09001" "09001" "09001" "09001" ...
    ##  $ SCC      : chr  "10100401" "10100404" "10100501" "10200401" ...
    ##  $ Pollutant: chr  "PM25-PRI" "PM25-PRI" "PM25-PRI" "PM25-PRI" ...
    ##  $ Emissions: num  15.714 234.178 0.128 2.036 0.388 ...
    ##  $ type     : chr  "POINT" "POINT" "POINT" "POINT" ...
    ##  $ year     : int  1999 1999 1999 1999 1999 1999 1999 1999 1999 1999 ...

#### 3.1.2. SCC <a href="" id="scc"></a>

The data from `Source_Classification_Code.rds` is already tidy.
Following the assignment instruction, I have named this object `SCC`.

-   Size: 3,983,496 Bytes (3.798958 Megabytes)
-   Rows: 11,717, and;
-   Columns: 15.

I have calculated the object size in Bytes using the `object_size()`
from the `pryr` package.

The columns variables in the SCC dataset: SCC, Data.Category,
Short.Name, EI.Sector, Option.Group, Option.Set, SCC.Level.One,
SCC.Level.Two, SCC.Level.Three, SCC.Level.Four, Map.To,
Last.Inventory.Year, Created_Date, Revised_Date, Usage.Notes

**Head**

<table class="table" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
SCC
</th>
<th style="text-align:left;">
Data.Category
</th>
<th style="text-align:left;">
Short.Name
</th>
<th style="text-align:left;">
EI.Sector
</th>
<th style="text-align:left;">
Option.Group
</th>
<th style="text-align:left;">
Option.Set
</th>
<th style="text-align:left;">
SCC.Level.One
</th>
<th style="text-align:left;">
SCC.Level.Two
</th>
<th style="text-align:left;">
SCC.Level.Three
</th>
<th style="text-align:left;">
SCC.Level.Four
</th>
<th style="text-align:right;">
Map.To
</th>
<th style="text-align:right;">
Last.Inventory.Year
</th>
<th style="text-align:left;">
Created_Date
</th>
<th style="text-align:left;">
Revised_Date
</th>
<th style="text-align:left;">
Usage.Notes
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
10100101
</td>
<td style="text-align:left;">
Point
</td>
<td style="text-align:left;">
Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal
</td>
<td style="text-align:left;">
Fuel Comb - Electric Generation - Coal
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
External Combustion Boilers
</td>
<td style="text-align:left;">
Electric Generation
</td>
<td style="text-align:left;">
Anthracite Coal
</td>
<td style="text-align:left;">
Pulverized Coal
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
10100102
</td>
<td style="text-align:left;">
Point
</td>
<td style="text-align:left;">
Ext Comb /Electric Gen /Anthracite Coal /Traveling Grate (Overfeed)
Stoker
</td>
<td style="text-align:left;">
Fuel Comb - Electric Generation - Coal
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
External Combustion Boilers
</td>
<td style="text-align:left;">
Electric Generation
</td>
<td style="text-align:left;">
Anthracite Coal
</td>
<td style="text-align:left;">
Traveling Grate (Overfeed) Stoker
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
10100201
</td>
<td style="text-align:left;">
Point
</td>
<td style="text-align:left;">
Ext Comb /Electric Gen /Bituminous Coal /Pulverized Coal: Wet Bottom
</td>
<td style="text-align:left;">
Fuel Comb - Electric Generation - Coal
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
External Combustion Boilers
</td>
<td style="text-align:left;">
Electric Generation
</td>
<td style="text-align:left;">
Bituminous/Subbituminous Coal
</td>
<td style="text-align:left;">
Pulverized Coal: Wet Bottom (Bituminous Coal)
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
10100202
</td>
<td style="text-align:left;">
Point
</td>
<td style="text-align:left;">
Ext Comb /Electric Gen /Bituminous Coal /Pulverized Coal: Dry Bottom
</td>
<td style="text-align:left;">
Fuel Comb - Electric Generation - Coal
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
External Combustion Boilers
</td>
<td style="text-align:left;">
Electric Generation
</td>
<td style="text-align:left;">
Bituminous/Subbituminous Coal
</td>
<td style="text-align:left;">
Pulverized Coal: Dry Bottom (Bituminous Coal)
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
10100203
</td>
<td style="text-align:left;">
Point
</td>
<td style="text-align:left;">
Ext Comb /Electric Gen /Bituminous Coal /Cyclone Furnace
</td>
<td style="text-align:left;">
Fuel Comb - Electric Generation - Coal
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
External Combustion Boilers
</td>
<td style="text-align:left;">
Electric Generation
</td>
<td style="text-align:left;">
Bituminous/Subbituminous Coal
</td>
<td style="text-align:left;">
Cyclone Furnace (Bituminous Coal)
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
<tr>
<td style="text-align:left;">
10100204
</td>
<td style="text-align:left;">
Point
</td>
<td style="text-align:left;">
Ext Comb /Electric Gen /Bituminous Coal /Spreader Stoker
</td>
<td style="text-align:left;">
Fuel Comb - Electric Generation - Coal
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
External Combustion Boilers
</td>
<td style="text-align:left;">
Electric Generation
</td>
<td style="text-align:left;">
Bituminous/Subbituminous Coal
</td>
<td style="text-align:left;">
Spreader Stoker (Bituminous Coal)
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
</tr>
</tbody>
</table>

**Strucuture**

    ## 'data.frame':    11717 obs. of  15 variables:
    ##  $ SCC                : Factor w/ 11717 levels "10100101","10100102",..: 1 2 3 4 5 6 7 8 9 10 ...
    ##  $ Data.Category      : Factor w/ 6 levels "Biogenic","Event",..: 6 6 6 6 6 6 6 6 6 6 ...
    ##  $ Short.Name         : Factor w/ 11238 levels "","2,4-D Salts and Esters Prod /Process Vents, 2,4-D Recovery: Filtration",..: 3283 3284 3293 3291 3290 3294 3295 3296 3292 3289 ...
    ##  $ EI.Sector          : Factor w/ 59 levels "Agriculture - Crops & Livestock Dust",..: 18 18 18 18 18 18 18 18 18 18 ...
    ##  $ Option.Group       : Factor w/ 25 levels "","C/I Kerosene",..: 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ Option.Set         : Factor w/ 18 levels "","A","B","B1A",..: 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ SCC.Level.One      : Factor w/ 17 levels "Brick Kilns",..: 3 3 3 3 3 3 3 3 3 3 ...
    ##  $ SCC.Level.Two      : Factor w/ 146 levels "","Agricultural Chemicals Production",..: 32 32 32 32 32 32 32 32 32 32 ...
    ##  $ SCC.Level.Three    : Factor w/ 1061 levels "","100% Biosolids (e.g., sewage sludge, manure, mixtures of these matls)",..: 88 88 156 156 156 156 156 156 156 156 ...
    ##  $ SCC.Level.Four     : Factor w/ 6084 levels "","(NH4)2 SO4 Acid Bath System and Evaporator",..: 4455 5583 4466 4458 1341 5246 5584 5983 4461 776 ...
    ##  $ Map.To             : num  NA NA NA NA NA NA NA NA NA NA ...
    ##  $ Last.Inventory.Year: int  NA NA NA NA NA NA NA NA NA NA ...
    ##  $ Created_Date       : Factor w/ 57 levels "","1/27/2000 0:00:00",..: 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ Revised_Date       : Factor w/ 44 levels "","1/27/2000 0:00:00",..: 1 1 1 1 1 1 1 1 1 1 ...
    ##  $ Usage.Notes        : Factor w/ 21 levels ""," ","includes bleaching towers, washer hoods, filtrate tanks, vacuum pump exhausts",..: 1 1 1 1 1 1 1 1 1 1 ...

### 3.2. Output <a href="" id="output"></a>

The results of this assignment are 6 (six) files `.R` and 6 (six) files
`png`.

**EI.Sector**

There are 59 types of `EI.Sector`:

    ##  [1] Fuel Comb - Electric Generation - Coal            
    ##  [2] Fuel Comb - Electric Generation - Oil             
    ##  [3] Fuel Comb - Electric Generation - Natural Gas     
    ##  [4] Fuel Comb - Electric Generation - Other           
    ##  [5] Fuel Comb - Electric Generation - Biomass         
    ##  [6] Fuel Comb - Industrial Boilers, ICEs - Coal       
    ##  [7] Fuel Comb - Industrial Boilers, ICEs - Oil        
    ##  [8] Fuel Comb - Industrial Boilers, ICEs - Natural Gas
    ##  [9] Fuel Comb - Industrial Boilers, ICEs - Other      
    ## [10] Fuel Comb - Industrial Boilers, ICEs - Biomass    
    ## [11] Fuel Comb - Comm/Institutional - Coal             
    ## [12] Fuel Comb - Comm/Institutional - Oil              
    ## [13] Fuel Comb - Comm/Institutional - Natural Gas      
    ## [14] Fuel Comb - Comm/Institutional - Other            
    ## [15] Fuel Comb - Comm/Institutional - Biomass          
    ## [16] Industrial Processes - NEC                        
    ## [17] Fuel Comb - Residential - Other                   
    ## [18] Fuel Comb - Residential - Oil                     
    ## [19] Fuel Comb - Residential - Natural Gas             
    ## [20] Fuel Comb - Residential - Wood                    
    ## [21] Mobile - On-Road Gasoline Light Duty Vehicles     
    ## [22] Mobile - On-Road Gasoline Heavy Duty Vehicles     
    ## [23] Mobile - On-Road Diesel Light Duty Vehicles       
    ## [24] Mobile - On-Road Diesel Heavy Duty Vehicles       
    ## [25] Mobile - Non-Road Equipment - Gasoline            
    ## [26] Mobile - Non-Road Equipment - Other               
    ## [27] Mobile - Non-Road Equipment - Diesel              
    ## [28] Mobile - Aircraft                                 
    ## [29] Mobile - Commercial Marine Vessels                
    ## [30] Mobile - Locomotives                              
    ## [31] Dust - Paved Road Dust                            
    ## [32] Dust - Unpaved Road Dust                          
    ## [33] Industrial Processes - Chemical Manuf             
    ## [34] Commercial Cooking                                
    ## [35] Industrial Processes - Non-ferrous Metals         
    ## [36] Industrial Processes - Ferrous Metals             
    ## [37] Industrial Processes - Petroleum Refineries       
    ## [38] Industrial Processes - Oil & Gas Production       
    ## [39] Dust - Construction Dust                          
    ## [40] Industrial Processes - Mining                     
    ## [41] Solvent - Non-Industrial Surface Coating          
    ## [42] Solvent - Industrial Surface Coating & Solvent Use
    ## [43] Solvent - Degreasing                              
    ## [44] Solvent - Dry Cleaning                            
    ## [45] Solvent - Graphic Arts                            
    ## [46] Solvent - Consumer & Commercial Solvent Use       
    ## [47] Industrial Processes - Storage and Transfer       
    ## [48] Miscellaneous Non-Industrial NEC                  
    ## [49] Bulk Gasoline Terminals                           
    ## [50] Gas Stations                                      
    ## [51] Waste Disposal                                    
    ## [52] Agriculture - Livestock Waste                     
    ## [53] Agriculture - Crops & Livestock Dust              
    ## [54] Fires - Agricultural Field Burning                
    ## [55] Agriculture - Fertilizer Application              
    ## [56] Fires - Wildfires                                 
    ## [57] Fires - Prescribed Fires                          
    ## [58] Industrial Processes - Cement Manuf               
    ## [59] Industrial Processes - Pulp & Paper               
    ## 59 Levels: Agriculture - Crops & Livestock Dust ...

The EI.Sector related to Coal:

    ## [1] Fuel Comb - Electric Generation - Coal     
    ## [2] Fuel Comb - Industrial Boilers, ICEs - Coal
    ## [3] Fuel Comb - Comm/Institutional - Coal      
    ## 59 Levels: Agriculture - Crops & Livestock Dust ...
