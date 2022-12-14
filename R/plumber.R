# Generated by the vetiver package; edit with care

library(pins)
library(plumber)
library(rapidoc)
library(vetiver)

# Packages needed to generate model predictions
if (FALSE) {
    library(parsnip)
    library(stats)
    library(workflows)
}
b <- board_folder(path = "/home/saradindu/dev/mlops_pipeline_R/models")
v <- vetiver_pin_read(b, "cars_mpg", version = "20221208T194426Z-11a22")

#* @plumber
function(pr) {
    pr %>% vetiver_api(v)
}
