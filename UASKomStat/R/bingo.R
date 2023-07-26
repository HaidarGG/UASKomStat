bingo <- function(lemparan, line, total_bola) {
  if (total_bola < 1 | total_bola > 99) {
    stop("Total bola harus berada dalam rentang 1 hingga 99.")
  }

  bola_terambil <- 0

  # Fungsi untuk menghitung kombinasi
  kombinasi <- function(n, k) {
    factorial(n) / (factorial(k) * factorial(n - k))
  }

  # Menghitung probabilitas untuk masing-masing line
  probabilitas_line <- numeric(line)
  for (i in 1:line) {
    probabilitas_line[i] <- kombinasi(total_bola - bola_terambil, 25) / kombinasi(total_bola, lemparan)
    bola_terambil <- bola_terambil + 25
  }

  # Menghitung probabilitas memenangkan seluruh line
  probabilitas_all_line <- prod(probabilitas_line)

  return(probabilitas_all_line)
}
