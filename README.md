# **Status of coral reef monitoring: An assessment of methods and data at the national level**


**This repository contains code used for the production of the report**:

[Prasil Delaval, N., Wicquart, J., Staub, F., Planes, S. (eds.). Status of coral reef monitoring: an assessment of methods and data at the national level. Global Coral Reef Monitoring Network (GCRMN)/International Coral Reefs Initiative (ICRI), 2021.](https://www.icriforum.org/wp-content/uploads/2022/03/GCRMN_Status_of_Coral_Reef_Monitoring_-_An_Assessment_of_Methods_and_Data_at_the_National_Level_-_WEB.pdf)


## 1. How to download this project?

On the project main page on GitHub, click on the green button `Code` and then click on `Download ZIP`


## 2. Description of the project

### 2.1 Datasets description

The figures and tables presented in this report were made using the seven following datasets:

* **Background maps**. The background maps data of land, minor islands and atolls as 1:10 m shapefiles (v. 4.1.0) were
obtained from [Natural Earth Data (Natural Earth Data, 2018)](https://www.naturalearthdata.com/downloads/).

* **Economic Exclusive Zone (EEZ)**. The EEZ shapefile (v.11) was obtained from the [Flanders Marine Institute, 2019](https://www.marineregions.org/downloads.php).

* **Coral reefs distribution**. The distribution of coral reefs of the world shapefile was obtained from the WRI (Institute for Marine Remote Sensing - University of South Florida (IMaRS-USF), Institut de Recherche pour le Développement (IRD), UNEP-WCMC, The WorldFish Center, & World Resources Institute, 2011). This dataset was used to ensure consistency with the GCRMN report [Status of Coral Reefs of the World: 2020 (Souter et al., 2021)](https://gcrmn.net/2020-report/), which also uses this dataset.

* **Hard coral species richness**. The number of hard coral species in each country was estimated based on the IUCN Red-List Database (IUCN, 2021).

* **Coral reef fish species richness**. The number of fish species associated with coral reefs in each country was estimated based on the [Fishbase database (Froese & Pauly, 2020)](https://www.fishbase.de/).

* **Marine Protected Areas (MPA)**. Marine Protected Area shapefiles were obtained from the Marine Protection Atlas Database (Marine Conservation Institute, 2020). Marine Protection Atlas uses the World Database on Protected Areas (UNEP-WCMC & IUCN, 2020) as the starting point for its database, conducting an independent, third-party review of the data and making additions and corrections if necessary.

* **2020 GCRMN world report database**. The database built for the 2020 GCRMN Report [Status of Coral Reefs of the World: 2020 (Souter et al., 2021)](https://gcrmn.net/2020-report/) was used to describe the monitoring within the different countries. Thousands of raw datasets, provided by numerous contributors worldwide, were homogenized and aggregated based on a dedicated workflow presented in [Wicquart et al, (2022)](https://www.sciencedirect.com/science/article/pii/S1574954121003344), order to produce a unique and homogeneous database. Variables used in this database are presented in the **Table 1**.

**Table 1.** Variables selected for the benthic synthetic dataset. The icons for the variables categories (`Cat.`) represents :memo: = description variables, :globe_with_meridians: = spatial variables, :calendar: = temporal variables, :straight_ruler: = methodological variables, :crab: = taxonomic variables, :chart_with_upwards_trend: = metric variables.

|      | Variable    | Cat.                       | Type    | Unit | Description                              |
| ---- | ----------- | -------------------------- | ------- | ---- | ---------------------------------------- |
| 1    | DatasetID   | :memo:                     | Factor  |      | Dataset ID                               |
| 2    | Area        | :globe_with_meridians:     | Factor  |      | Biogeographic area                       |
| 3    | Country     | :globe_with_meridians:     | Factor  |      | Country                                  |
| 4    | Archipelago | :globe_with_meridians:     | Factor  |      | Archipelago                              |
| 5    | Location    | :globe_with_meridians:     | Factor  |      | Location or island within the country    |
| 6    | Site        | :globe_with_meridians:     | Factor  |      | Site within the location                 |
| 7    | Replicate   | :globe_with_meridians:     | Integer |      | Replicate ID                             |
| 8    | Quadrat     | :globe_with_meridians:     | Integer |      | Replicate ID                             |
| 8    | Zone        | :globe_with_meridians:     | Factor  |      | Reef zone                                |
| 9    | Latitude    | :globe_with_meridians:     | Numeric |      | Latitude of the site (*decimal format*)  |
| 10   | Longitude   | :globe_with_meridians:     | Numeric |      | Longitude of the site (*decimal format*) |
| 11   | Depth       | :globe_with_meridians:     | Numeric | m    | Mean depth                               |
| 12   | Year        | :calendar:                 | Integer |      | Year                                     |
| 13   | Date        | :calendar:                 | Date    |      | Date (*YYYY-MM-DD*)                      |
| 14   | Method      | :straight_ruler:           | Factor  |      | Description of the method used           |
| 15   | Observer    | :straight_ruler:           | Factor  |      | Name of the diver                        |
| 16   | Category    | :crab:                     | Factor  |      | See *Table 2*                            |
| 17   | Group       | :crab:                     | Factor  |      | See *Table 2*                            |
| 18   | Family      | :crab:                     | Factor  |      | Family                                   |
| 19   | Genus       | :crab:                     | Factor  |      | Genus                                    |
| 20   | Species     | :crab:                     | Factor  |      | Species                                  |
| 21   | Cover       | :chart_with_upwards_trend: | Numeric | %    | Cover percentage                         |

### 2.2 Code description

* `00_data-cleaning.Rmd`
* `01_analyses-maps.Rmd`
* `02_analyses-graphs.Rmd`
* `03_analyses-hard-coral-species.Rmd`
* `04_analyses-fish-species.Rmd`
* `05_analyses-mpa.Rmd`
* `06_data-contributors.R`

## 3. How to report issues?

Please report any bugs or issues [HERE](https://github.com/JWicquart/gcrmn_ctry/issues).


## 4. Reproducibility parameters

```R
R version 4.0.3 (2020-10-10)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 10 x64 (build 18363)

Matrix products: default

locale:
[1] LC_COLLATE=French_France.1252  LC_CTYPE=French_France.1252   
[3] LC_MONETARY=French_France.1252 LC_NUMERIC=C                  
[5] LC_TIME=French_France.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] Hmisc_4.4-1         Formula_1.2-4       survival_3.2-7     
 [4] lattice_0.20-41     rfishbase_3.0.4     leaflet_2.0.3      
 [7] formattable_0.2.0.1 DT_0.16             lubridate_1.7.9    
[10] readxl_1.3.1        forcats_0.5.0       stringr_1.4.0      
[13] dplyr_1.0.2         purrr_0.3.4         readr_1.4.0        
[16] tidyr_1.1.2         tibble_3.0.4        ggplot2_3.3.2      
[19] tidyverse_1.3.0    

loaded via a namespace (and not attached):
 [1] httr_1.4.2          jsonlite_1.7.1      splines_4.0.3      
 [4] modelr_0.1.8        assertthat_0.2.1    latticeExtra_0.6-29
 [7] blob_1.2.1          cellranger_1.1.0    yaml_2.2.1         
[10] pillar_1.4.6        backports_1.1.10    glue_1.4.2         
[13] digest_0.6.25       checkmate_2.0.0     RColorBrewer_1.1-2 
[16] rvest_0.3.6         colorspace_1.4-1    htmltools_0.5.0    
[19] Matrix_1.2-18       pkgconfig_2.0.3     broom_0.7.2        
[22] haven_2.3.1         scales_1.1.1        jpeg_0.1-8.1       
[25] htmlTable_2.1.0     generics_0.0.2      ellipsis_0.3.1     
[28] withr_2.3.0         nnet_7.3-14         cli_2.1.0          
[31] magrittr_1.5        crayon_1.3.4        memoise_1.1.0      
[34] evaluate_0.14       fs_1.5.0            fansi_0.4.1        
[37] xml2_1.3.2          foreign_0.8-80      data.table_1.13.0  
[40] tools_4.0.3         gh_1.1.0            hms_0.5.3          
[43] lifecycle_0.2.0     munsell_0.5.0       reprex_0.3.0       
[46] cluster_2.1.0       compiler_4.0.3      rlang_0.4.8        
[49] grid_4.0.3          rstudioapi_0.11     htmlwidgets_1.5.2  
[52] crosstalk_1.1.0.1   base64enc_0.1-3     rmarkdown_2.4      
[55] gtable_0.3.0        DBI_1.1.0           R6_2.4.1           
[58] gridExtra_2.3       knitr_1.30          stringi_1.5.3      
[61] Rcpp_1.0.5          rpart_4.1-15        vctrs_0.3.4        
[64] png_0.1-7           dbplyr_1.4.4        tidyselect_1.1.0   
[67] xfun_0.18 
```