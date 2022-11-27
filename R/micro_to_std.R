#' To solve microliters needed for desired concentration of RNA/DNA
#'
#' This function takes a numerical input for the concentration
#' (ng/µL) of your RNA/DNA sample and returns the concentration in g/L.
#'
#' @param ng_per_uL Input value, must be numerical value representing sample concentration.
#' @return A numerical vector, with a sample's concentration in g/L.

micro_to_std <- function(ng_per_uL){
  g_per_L <- ng_per_uL/1000
  return(g_per_L)
}


