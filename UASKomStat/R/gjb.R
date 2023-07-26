gjb <- function(massa, ketinggian) {
  gravitasi <- 9.81  # Percepatan gravitasi bumi (m/s^2)
  kecepatan_akhir <- sqrt(2 * gravitasi * ketinggian)
  return(kecepatan_akhir)
}
