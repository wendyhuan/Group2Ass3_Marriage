#### Preamble ####
# Purpose: Cleans the raw marriage dta into an analysis dataset
# Author: Yanfei Huang
# Date: 19 September 2024 
# Contact: yanfei.huang@mail.utornto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("starter_folder-main/data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period,
           into = c('year', 'month'), 
           sep = '-') |>
  mutate(date = lubridate::ymd(paste(year, month, '01', sep = '-')))

#### Save data ####
write_csv(cleaned_data, "starter_folder-main/data/analysis_data/analysis_data.csv")

