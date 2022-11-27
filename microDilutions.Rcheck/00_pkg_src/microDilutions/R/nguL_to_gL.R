#' To solve microliters needed for desired concentration of RNA/DNA
#'
#' This function takes a numerical input for the concentration
#' (ng/µL) of your RNA/DNA sample and returns the concentration in g/L.
#'
#' @param ng_per_uL Input value, must be numerical value representing sample concentration.
#' @return A numerical vector, with a sample's concentration in g/L.
#' @examples nguL_to_gL(25)


nguL_to_gL <- function(ng_per_uL){
  g_per_L <- ng_uL/1000
  return(g_per_L)
}


