################################################################################
#                                                                              #
#   Specialization: Data Science - Foundations using R Specialization          #
#           Course: Exploratory Data Analysis                                  #
#                                                                              #
#           Author: Anderson Hitoshi Uyekita                                   #
#             Date: 2022/06/17                                                 #
#                                                                              #
#   Course Project: EPA National Emissions Inventory (Week 4)                  #
#      Deliverable: plot1.R                                                    #
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

########################### 4. Plot 1 ##########################################
with(data = NEI, {
    
    # Creating a PNG file.
    png(filename = "plot1.png")  
    
    # Creating a subsetting to plot 1.
    plot_1_data <- with(data = NEI,
                        base::tapply(X = Emissions, # The tapply will create
                                     INDEX = year,  # a total emissions of
                                     FUN = sum))    # each year.
    
    # The above code has the same results of:
    # plot_1_data <- NEI %>%
    #     dplyr::group_by(year) %>%
    #     dplyr::summarise(total = base::sum(Emissions))
    
    # Add a outer margin to the plot.
    par(oma = c(1,1,1,1))
    
    # Creating the barchart plotting using base graphic system.
    p <- barplot(plot_1_data/1000000,
                 main = expression('Total PM'[2.5] ~ ' in the United States'),
                 ylab = expression('PM'[2.5] ~ 'Emissions (10' ^6 ~ 'tons)'),
                 xlab = "Year")
    
    # Adding text over the bars.
    text(x = p,
         y = plot_1_data/1000000 - 0.5 ,
         label = format(plot_1_data/1000000,
                        nsmall = 1,
                        digits = 1))
    
    # Closing the device.
    dev.off()      
})