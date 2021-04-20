ggplot_map_eez <- function(territory_name, title = FALSE){
  
  data_eez_i <- data_eez_sovereign %>% 
    filter(TERRITORY1 == territory_name)
  
  bbox_i <- st_bbox(data_eez_i)
  
  plot_i <- ggplot() +
    # EEZ
    geom_sf(data = data_eez_i, fill = col_eez, color = col_eez_b) +
    # Background map
    geom_sf(data = background_map, fill = col_fill_map, col = col_color_map) +
    # Benthos
    geom_sf(data = data_benthos_range_i, shape = 21, col = "black", aes(fill = interval_class), size = 3, show.legend = FALSE) +
    coord_sf(xlim = c(bbox_i$xmin, bbox_i$xmax), ylim = c(bbox_i$ymin, bbox_i$ymax)) +
    scale_fill_manual(values = palette_trange, name = "Time range (years)", drop = FALSE) +
    theme(panel.background = element_blank(),
          panel.border = element_blank(),
          axis.title = element_blank(),
          axis.text = element_blank(),
          axis.ticks = element_blank(),
          plot.title = element_text(hjust = 0.5, size = 10),
          plot.margin = unit(c(0.1,0.1,0.1,0.1), "cm"))
  
  if(title == TRUE){
    
    plot_i <- plot_i +
      labs(title = territory_name)
    
  }
  
  return(plot_i)
  
}