#' @importFrom stringr str_sub str_extract
abbr_binom <- function(binom) {
  paste(str_sub(binom, 1, 1),
        str_extract(binom, " .*"),
        sep = ".")
}

pal_whale_mp <- c("M. novaeangliae" = "gray30",
                  "B. physalus" = "chocolate3",
                  "B. musculus" = "dodgerblue2")
