# dependencies ====
library(packrat)
library(knitr)
library(rmarkdown)
library(bookdown)
library(reshape2)
library(ggplot2)
library(devtools)
library(gridExtra)
library(grid)
library(reshape2)
# install_github(repo = "maxheld83/pensieve")
library(pensieve)

# knitr setup ====
#opts_knit$set(root.dir = normalizePath(getwd()))  # make sure the knitr path is correct
knitr::opts_chunk$set(tidy = TRUE, cache = TRUE, echo = FALSE, message = FALSE)  # tidy formats code nicely in echo
options(digits = 2)  # display only 2 digits in knitr output
options(scipen = 999)
