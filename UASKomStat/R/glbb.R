glbb <- function(massa, kecepatan_awal) {
  gravitasi <- 9.81  # Percepatan gravitasi bumi (m/s^2)
  jarak_tempuh <- (kecepatan_awal^2) / (2 * gravitasi)
  return(jarak_tempuh)
}
