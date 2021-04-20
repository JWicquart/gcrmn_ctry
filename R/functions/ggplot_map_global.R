ggplot_map_global <- function(){
  
  plot_i <- ggplot() +
    # EEZ
    geom_sf(data = data_eez_sovereign, color = col_eez_b, fill = col_eez, alpha = 0.8) +
    # Background map
    geom_sf(data = background_map, fill = col_fill_map, col = col_color_map) +
    # Benthos
    geom_sf(data = data_benthos_range_i, shape = 21, col = "black", aes(fill = interval_class), size = 1) +
    # EEZ label
    geom_sf_label_repel(data = data_eez_sovereign, aes(label = TERRITORY1), force = 100, nudge_x = -2, seed = 10, alpha = 0.5) +
    # Misc
    coord_sf(ylim = c(-45, 45)) +
    guides(fill = guide_legend(override.aes = list(size = 4))) +
    scale_fill_manual(values = palette_trange, name = "Time range (years)", drop = FALSE) +
    theme(axis.ticks = element_blank(),
          axis.text = element_blank(),
          plot.margin = unit(c(0,2,0,2), "pt"),
          axis.title = element_blank())
  
  return(plot_i)
  
}