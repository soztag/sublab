# dependencies ====
library(knitr)
library(rmarkdown)
if (interactive()) {
  utils::install.packages("../pensieve", repos = NULL, type = "source", INSTALL_opts = c('--no-lock'))
}
library(pensieve)

# knitr setup ====
knitr::opts_chunk$set(
  tidy = TRUE,   # tidy formats code nicely in echo
  cache = TRUE,
  echo = FALSE,
  message = FALSE,
  include = FALSE,
  eval = FALSE
)
options(digits = 2)  # display only 2 digits in knitr output
options(scipen = 999)
