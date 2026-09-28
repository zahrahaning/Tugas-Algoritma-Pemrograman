# Tugas 1  Mencari median dengan fungsi yang dibuat sendiri

```R
find_median <- function(x) {
  x <- sort(x)
  n <- length(x)
  
  if (n %% 2 == 1) {
    median <- x[(n + 1) / 2]
  } else {
    median <- (x[n / 2] + x[n / 2 + 1] / 2)
  }
  return(median)
}

#Pengujian
x <- c(3, 7, 2, 9, 5)
find_median(x)
```
Output:
```text
[1] 5
```

# Tugas 2 Menghitung Mean lalu menambahkan nilai mean ke dalam vektor, sampai panjang vektor = 10

```R
mean_extend <- function(x) {
  while (length(x) < 10) {
    mean_x <- sum(x) / length(x)
    x <- c(x, mean_x)
  }
  return(x)
}

# Pengujian
mean_extend(c(3, 4, 5, 6))
```
Output:
```text
[1] 3.0 4.0 5.0 6.0 4.5 4.5 4.5 4.5 4.5 4.5
```

# Tugas 3 Membuat fungsi untuk menghitung jumlah bilangan genap di dalam vektor

```R
hitung_genap <- function(x) {
  jumlah_genap <- 0
  
  for (a in x) {
    if (a %% 2 == 0) {
      jumlah_genap <- jumlah_genap + 1
    }
  }
  return(jumlah_genap)
}

# Pengujian
x <- c(3, 4, 7, 10, 12, 15)
hitung_genap(x)
```
Output:
```text
[1] 3
```

# Tugas 4 Mengtung jumlah seluruh elemen genap di matriks

```R
hitung_genap_matrix <- function(m) {
  jumlah_genap <- 0
  
  for (a in 1:nrow(m)) {
    for (b in 1:ncol(m)) {
      if (m[a, b] %% 2 == 0) {
        jumlah_genap <- jumlah_genap + m[a, b]
      }
    }
  }
  return(jumlah_genap)
}

# Pengujian
m <- matrix(1:12, nrow = 3, ncol=4)
hitung_genap_matrix(m)
```
Output:
```text
[1] 42
```