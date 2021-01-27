#' @importFrom ggOceanMaps basemap
#' @importFrom ggspatial annotation_scale
#' @export
create_norcal_map <- function() {
  basemap(limits = c(-123.5, -121, 35.75, 38.25),
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
    geom_point(data = Choy_sam_loc,
               aes(x = lon, y = lat),
               shape = 17, color = "firebrick3") +
    geom_point(data = BoxKash_sam_loc,
               aes(x = lon, y = lat),
               shape = 2, color = "firebrick3") +
    annotation_scale(location = "br") +
    annotate("text", x = c(-122.35,-121.78), y = c(37.725,36.6),
             label = c("San\nFrancisco\nbay area", "Monterey"),
             size = 3) +
    theme(axis.title = element_blank(),
          legend.title = element_blank())
}
