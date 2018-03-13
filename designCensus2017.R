# Load dependencies
library(plotly)
library(dplyr)
library(tibble)

# Read in Design Census Data 2017 csv
data <- read.csv("data/DesignCensus2017_Data.csv", stringsAsFactors = FALSE)

# Response number
data <- rownames_to_column(data, "response")

# Super basic histogram
p1 <- plot_ly(data, x = ~X1....I.ve.worked.in.design.for.) %>% add_histogram(name = "years in design")
plotly_build(p1)