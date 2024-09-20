#### Preamble ####
# Purpose: Tests and Sanity check of the data
# Author: Yanfei Huang
# Date: 19 September 2024 
# Contact: yanfei.huang@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#test data
data <- read.csv('starter_folder-main/data/raw-data/simulated.csv')

# test for negative numbers
data$number_of_marriage |> min () <= 0

# test for NAs
all(is.na(data$number_of_marriage))


