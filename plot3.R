################################################################################
#                                                                              #
#   Specialization: Data Science - Foundations using R Specialization          #
#           Course: Exploratory Data Analysis                                  #
#                                                                              #
#           Author: Anderson Hitoshi Uyekita                                   #
#             Date: 2022/06/17                                                 #
#                                                                              #
#   Course Project: EPA National Emissions Inventory (Week 4)                  #
#      Deliverable: plot3.R                                                    #
#                                                                              #
################################################################################

########################### 1. Creating a folder ###############################

# 1. Create a data directory
if(!base::file.exists("data")) {
    base::dir.create("data")
}

########################### 2. Downloading data ################################

# 2. Download files and store it in data directory.
if(!base::file.exists("./data/FNEI_data.zip")){
    utils::download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip",
                         destfile = "./data/FNEI_data.zip")
}

# 2.1. Unzipping the FNEI_data.zip file.
if(!base::file.exists("./data/unzipped/Source_Classification_Code.rds") | !base::file.exists("./data/unzipped/summarySCC_PM25.rds")){
    utils::unzip(zipfile = "./data/FNEI_data.zip",
                 exdir = "./data/unzipped/",
                 list = FALSE,
                 overwrite = TRUE)
}

########################### 3. Loading RDS files ###############################

# 3. Loading the RDS files.
NEI <- readRDS("./data/unzipped/summarySCC_PM25.rds")
SCC <- readRDS("./data/unzipped/Source_Classification_Code.rds")

########################### 4. Dataset Manipulation ############################

#######################################################################################
#                                                                                     #
# Author: Anderson Hitoshi Uyekita                                                    #
# Exploratory Data Analysis                                                           #
# Course Project 02 - Week 3 - Coursera                                               #
# File: plot3.R                                                                      #
#                                                                                     #
#######################################################################################

############################### 1. Work Directory #####################################
# Saving the original work directory
root_original <- getwd()

# All manipulation data will start in the root.
setwd("~")

################################ 2. Work Directory ####################################
# Create a project directory
if(!file.exists("Project02"))
{
        dir.create("Project02")
}

# Set as Work Directory
setwd("Project02")

################################ 3. Download Data #####################################
library(httr) 
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
if(!file.exists("FNEI_data.zip"))
{
        download.file(url, "FNEI_data.zip")
}

# Removing the URL
rm(url)

# Unzipping the power_consumption file
if(!file.exists("Source_Classification_Code.rds") | !file.exists("summarySCC_PM25.rds"))
{
        unzip("FNEI_data.zip", list = FALSE, overwrite = TRUE)
}

file_unzipped <- c("./Source_Classification_Code.rds","./summarySCC_PM25.rds")

################################ 4. Loading the data ##################################
raw_dataset = list(data.frame(),data.frame())

for (i in 1:length(file_unzipped))
{
        raw_dataset[[i]] <- readRDS(file_unzipped[i])
}

names(raw_dataset) <- c("SCC","NEI")


rm(file_unzipped)

#################################### 5. Plot 3  #######################################
baltimore <- subset(raw_dataset$NEI, raw_dataset$NEI$fips == "24510")
library(plyr)
plot_data <- ddply(baltimore, .(year, type), numcolwise(sum))

aggTotalsBaltimore <- aggregate(Emissions ~ year + type, baltimore,sum)

library(ggplot2)
with(baltimore, {
        
        png(filename = "plot3.png", width=640, height=480)  
        
        

        plot <- ggplot(plot_data) + aes(x = factor(year), y = Emissions, group = type, col = type) + geom_line() + labs(title = expression('Emissions of PM'[2.5] ~ ' in Baltimore'), x = "Year", y = expression("Total PM"[2.5] ~ "emission (tons)"), fill = "Year")
        
        print(plot)
        
        dev.off()
        
})
