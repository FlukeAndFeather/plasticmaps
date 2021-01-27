check_data <- function() {
  if (!"ggOceanMapsData" %in% installed.packages()) {
    stop("Required package 'ggOceanMapsData' not installed. Install using 'install.packages(\"ggOceanMapsData\", repos = \"https://mikkovihtakari.github.io/drat\")'")
  }
}
