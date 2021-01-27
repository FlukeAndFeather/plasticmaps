#' @export
create_socal_map <- function() {
  check_data()

  basemap(limits = c(-121, -116.5, 32, 35),
          land.col = "burlywood",
          rotate = TRUE) +
    geom_point(data = whale_tagon,
               aes(x = longitude, y = latitude, color = abbr_binom(Species)),
               alpha = 0.5) +
    scale_colour_manual(
      values = pal_whale_mp,
      guide = guide_legend(label.theme = element_text(face = "italic",
                                                      size = 10))
    ) +
    geom_point(data = LattinDoyle_sam_loc,
               aes(x = lon, y = lat),
               shape = 2, color = "firebrick3") +
    annotation_scale(location = "br") +
    annotate("text", x = c(-119.75,-118.2, -117.1), y = c(34.55,33.9, 32.85),
             label = c("Santa\nBarbara","Los\nAngeles","San\nDiego"),
             size = 3) +
    theme(axis.title = element_blank(),
          legend.title = element_blank())
}
