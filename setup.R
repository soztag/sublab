# dependencies ====
library(knitr)
library(rmarkdown)
library(bookdown)
library(reshape2)
library(ggplot2)
library(devtools)
library(gridExtra)
library(grid)
library(reshape2)
library(readxl)
library(stringr)
library(plyr)
library(xtable)
library(pander)
library(abind)
if (interactive()) {
  install.packages("../pensieve", repos = NULL, type = "source", INSTALL_opts = c('--no-lock'))
  install.packages("../qmethod", repos = NULL, type = "source", INSTALL_opts = c('--no-lock'))
}
library(pensieve)
library(qmethod)

# knitr setup ====
#opts_knit$set(root.dir = normalizePath(getwd()))  # make sure the knitr path is correct
knitr::opts_chunk$set(tidy = TRUE, cache = TRUE, echo = FALSE, message = FALSE)  # tidy formats code nicely in echo
options(digits = 2)  # display only 2 digits in knitr output
options(scipen = 999)
