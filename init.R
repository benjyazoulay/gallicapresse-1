# init.R
#
# Example R code to install packages if not already installed
#

my_packages = c("shiny", "ggplot2", "plotly","stringr","purrr","dplyr","xml2","markdown","shinythemes","tidyr","leaflet.extras","htmlwidgets","httr","htmltools","lubridate")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))
