#######################################################################################
#                                                                                     #
# Author: Anderson Hitoshi Uyekita                                                    #
# Exploratory Data Analysis                                                           #
# Course Project 02 - Week 3 - Coursera                                               #
# File: plot4.R                                                                      #
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

#################################### 5. Plot 4  #######################################
library(ggplot2)
library(plyr)

SCC <- raw_dataset$SCC
NEI <- raw_dataset$NEI

# Selection vetor of "Fuel Comb - Electric Generation - Coal"
selection_1 <- SCC[SCC$EI.Sector == "Fuel Comb - Electric Generation - Coal", 1]

# Selection vetor of "Fuel Comb - Industrial Boilers, ICEs - Coal"
selection_2 <- SCC[SCC$EI.Sector == "Fuel Comb - Industrial Boilers, ICEs - Coal", 1]

# Selection vetor of "Fuel Comb - Comm/Institutional - Coal"
selection_3 <- SCC[SCC$EI.Sector == "Fuel Comb - Comm/Institutional - Coal", 1]

# Subset data with selections vectors
subset_NEI_1 <- subset(NEI, SCC %in% selection_1)
subset_NEI_2 <- subset(NEI, SCC %in% selection_2)
subset_NEI_3 <- subset(NEI, SCC %in% selection_3)

# Bind all subsets into a biger one
subset_NEI <- rbind(subset_NEI_1, subset_NEI_2, subset_NEI_3)

# plot4

png(filename = "plot4.png")  
        
plot_data <- ddply(subset_NEI, .(year), numcolwise(sum))
        
plot <- ggplot(plot_data) + aes(x = factor(year), y = Emissions, group = 1) + geom_line(colour = "blue", size = 1) + labs(title = expression('Coal Combustion PM'[2.5] ~ ' in the United States'), x = "Year", y = expression("Total PM"[2.5] ~ "emission (tons)"))
        
print(plot)
        
dev.off()
