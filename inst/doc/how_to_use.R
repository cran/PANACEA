## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(PANACEA)

## -----------------------------------------------------------------------------
head(example_driveR_res)

## ----dst_based, eval=FALSE----------------------------------------------------
#  example_scores_dist <- score_drugs(example_driveR_res, method = "distance-based")

## ----save1, echo=FALSE, eval=FALSE--------------------------------------------
#  usethis::use_data(example_scores_dist)

## ----dist_based2--------------------------------------------------------------
head(example_scores_dist, 10)

## ----RWR, eval=FALSE----------------------------------------------------------
#  example_scores_RWR <- score_drugs(example_driveR_res, method = "RWR")

## ----save2, echo=FALSE, eval=FALSE--------------------------------------------
#  usethis::use_data(example_scores_RWR)

## ----RWR2---------------------------------------------------------------------
head(example_scores_RWR, 10)

