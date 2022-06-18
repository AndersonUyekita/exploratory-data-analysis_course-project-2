################################################################################
#                                                                              #
#   Specialization: Data Science - Foundations using R Specialization          #
#           Course: Exploratory Data Analysis                                  #
#                                                                              #
#           Author: Anderson Hitoshi Uyekita                                   #
#             Date: 2022/06/17                                                 #
#                                                                              #
#   Course Project: EPA National Emissions Inventory (Week 4)                  #
#      Deliverable: plot2.R                                                    #
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

# 4.1. Creating a subsetting for Baltimore City.
NEI_q2 <- base::subset(x = NEI, NEI$fips == "24510")

# 4.2. Summarizing the data set to calculate the total summation.
plot_2_data <- NEI_q2 %>%
    dplyr::group_by(year) %>%
    dplyr::summarise(total = base::sum(Emissions))

########################### 5. Plot 2 ##########################################
with(data = plot_2_data, {
    
    # Creating a PNG file.
    png(filename = "plot2.png")  
    
    # Add a outer margin to the plot.
    par(oma = c(1,1,1,1))
    
    # Creating the barchart plotting using base graphic system.
    p <- barplot(height = total, name = year,
                 main = base::expression('Total PM'[2.5] ~ ' in Baltimore City'),
                 ylab = base::expression('PM'[2.5] ~ 'Emissions (tons)'),
                 xlab = "Year")
    
    # Adding text over the bars.
    text(x = p,
         y = total - 100,
         label = base::format(total,
                              nsmall = 1,
                              digits = 1))
    
    # Closing the device.
    dev.off()      
})