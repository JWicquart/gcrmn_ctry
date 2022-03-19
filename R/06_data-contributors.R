# 1. Required packages ----

library(tidyverse)
library(sf)

# 2. Load data ----

load("data/00_filtered/00-data_benthos-top_30.RData")

# 3. Extract the list of dataset by country (SOVEREIGN1) ----

data_benthos %>% 
  st_drop_geometry() %>% 
  select(SOVEREIGN1, DatasetID) %>% 
  distinct() %>% 
  arrange(SOVEREIGN1) %>% 
  write.csv2(., file = "misc/list_contributors.csv", row.names = FALSE)
  
data_benthos %>% 
  st_drop_geometry() %>% 
  select(DatasetID) %>% 
  distinct() %>% 
  write.csv2(., file = "misc/list_contributors2.csv", row.names = FALSE)

data_benthos %>% 
  st_drop_geometry() %>% 
  select(SOVEREIGN1) %>% 
  distinct() %>% 
  arrange(SOVEREIGN1) %>% 
  write.csv2(., file = "misc/list_contributors3.csv", row.names = FALSE)

