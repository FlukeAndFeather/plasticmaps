## code to prepare `plastic_samples` datasets

Choy_sam_loc <- dplyr::tibble(
  lon = c(-121.82,-122.05),
  lat = c(36.8,36.7),
  depth = "depth"
)

BoxKash_sam_loc <- dplyr::tibble(
  lon = c(-122.9,-122.6,-123.4,
          -121.83595,-122.0129,-122.3055,-122.7199333),
  lat = c(37.45,37.65,37.98,
          36.73223333,36.95426667, 36.39216667, 35.75838333),
  depth = "surface"
)

LattinDoyle_sam_loc <- dplyr::tibble(
  lon = c(-118.5),
  lat = c(33.9),
  depth = "surface"
)

usethis::use_data(Choy_sam_loc, overwrite = TRUE)
usethis::use_data(BoxKash_sam_loc, overwrite = TRUE)
usethis::use_data(LattinDoyle_sam_loc, overwrite = TRUE)
