cek_bilangan <- function(a, b) {
  hasil <- a + b
  
  if (hasil %% 2 == 0) {
    return("genap")
  } else {
    return("ganjil")
  }
}

cek_bilangan(2, 3)
cek_bilangan(1, 5)
