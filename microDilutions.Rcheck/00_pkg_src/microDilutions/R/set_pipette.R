#' This function is based off the simple equation: c1v1 = c2v2
#'
#' This function requires three inputs: c1, v1, c2.
#'     c1 = initial concentration of sample (g/L; output of first function)
#'     v2 = initial volume of the sample (g/L)
#'     c2 = the desired concentration of the sample (g/L)
#'
#' This function solves for v2 (the final volume of the desired concentration, c2)
#' then it finds the absolute difference between v1 and v2
#' (the volume of liquid needed in the sample to reach c2). The function the converts
#' that "volume to add" in to ng/µL, which will be the numerical value to set your pipette
#' to reach the final concentration, c2
#'
#' @param c1 Input value, must be numerical value representing initial concentration.
#' @param v1 Input value, must be numerical value representing initial volume.
#' @param c2 Input calue, must be numerical value representing final concentration.
#'
#' @return A numerical vector, with the volume to set your micro-pipette.
#' @examples set_pipet_to("0.025", "0.015", "0.0125")

set_pipette_to <- function(c1, v1, c2){
  v2 <- (c1 * v1)/c2
  vol_2_add <- abs(v2 - v1) * 1000
  return(vol_2_add)
}
