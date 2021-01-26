## code to prepare `whale_tagon` dataset goes here

whale_tagon <- readr::read_csv("inst/extdata/alldata_CAwhales.csv") %>%
  dplyr::mutate(
    SpeciesCode = substr(deployID, 1, 2),
    Species = dplyr::case_when(
      SpeciesCode %in% c("bw", "Bm") ~ "Balaenoptera musculus",
      SpeciesCode %in% c("bp", "Bp") ~ "Balaenoptera physalus",
      SpeciesCode %in% c("mn", "Mn") ~ "Megaptera novaeangliae"
    )
  )

usethis::use_data(whale_tagon, overwrite = TRUE)
