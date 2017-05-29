needed_pkgs <- c(
  "nycflights13",
  "tibble",
  "dplyr",
  "ggplot2",
  "knitr",
  "okcupiddata",
  "dygraphs",
  "rmarkdown",
  "mosaic",
  "ggplot2movies",
  "fivethirtyeight",
  "readr"
)

new.pkgs <- needed_pkgs[!(needed_pkgs %in% installed.packages())]

if (length(new.pkgs)) {
  install.packages(new.pkgs, repos = "http://cran.rstudio.com")
}
