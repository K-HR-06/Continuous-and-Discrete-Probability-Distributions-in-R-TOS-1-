# Continous Variabel

data1 <- read.csv(file.choose(), sep = ";", header = TRUE);data1

get_mode <- function(x) {
  unique_x <- unique(x)                     
  counts <- tabulate(match(x, unique_x))    
  unique_x[which.max(counts)]               
}

# Height Data

Height_mean = mean(data1$Height); Height_mean
Height_sd = sd(data1$Height); Height_sd
Height_median = median(data1$Height); Height_median
Height_mode = get_mode(data1$Height); Height_mode

# Normal Distribution Curve

x <- seq(Height_mean - 4*Height_sd, Height_mean + 4*Height_sd, length = 100)

y <- dnorm(x, mean = Height_mean, sd = Height_sd)

plot(x, y, type = "l", lwd = 2, col = "green",
     main = "Normal Distribution Curve",
     xlab = "Observed Value", ylab = "Density")

# Add a vertical line at the mean and median
abline(v = Height_mean, col = "black", lwd = 2, lty = 3)
abline(v = median(data1$Height), col = "red", lwd = 1, lty = 1)

text(Height_mean, max(y), paste("Mean =", Height_mean), pos = 4, col = "black")
text(median(data1$Height), max(y), paste("Median =", Height_median), pos = 2, col = "red")

# Example 1 -> P(66 <= X <= 70)

p1 <- pnorm(70, mean = Height_mean, sd = Height_sd); p1
p2 <- pnorm(66, mean = Height_mean, sd = Height_sd); p2
p_final <- p1 - p2; p_final

# Example 2 -> P(X >= 71)
p <- 1 - pnorm(71, mean = Height_mean, sd = Height_sd); p

# Weight Data

Weight_mean = mean(data1$Weight); Weight_mean
Weight_sd = sd(data1$Weight); Weight_sd
Weight_median = median(data1$Weight); Weight_median
Weight_mode = get_mode(data1$Weight); Weight_mode

# Normal Distribution Curve

x <- seq(Weight_mean - 4*Weight_sd, Weight_mean + 4*Weight_sd, length = 100)

y <- dnorm(x, mean = Weight_mean, sd = Weight_sd)

plot(x, y, type = "l", lwd = 2, col = "green",
     main = "Normal Distribution Curve",
     xlab = "Observed Value", ylab = "Density")

# Add a vertical line at the mean and median
abline(v = Weight_mean, col = "black", lwd = 2, lty = 3)
abline(v = median(data1$Weight), col = "red", lwd = 1, lty = 1)

text(Weight_mean, max(y), paste("Mean =", Weight_mean), pos = 4, col = "black")
text(median(data1$Weight), max(y), paste("Median =", Weight_median), pos = 2, col = "red")

# Example 1 -> P(120 <= X <= 140)

p1 <- pnorm(140, mean = Weight_mean, sd = Weight_sd); p1
p2 <- pnorm(120, mean = Weight_mean, sd = Weight_sd); p2
p_final <- p1 - p2; p_final

# Example 2 -> P(X <= 115)
p <- pnorm(115, mean = Weight_mean, sd = Weight_sd); p

# ------------------------------------------------------------------------------------

# Discrete Variabel
data2 <- read.csv(file.choose(), sep = ";", header = TRUE)
colnames(data2)

used_column = c(3, 5)
data_used <- data2[, used_column]
colnames(data_used)

prob <- c(0.32, 0.32, 0.18, 0.12, 0.04, 0.02)

# Example 1
n <- 20
x <- c(5, 3, 4, 5, 2, 1)
prob_1 <- dmultinom(x, size = n, prob = prob); prob_1

# Example 2
x <- c(2, 3, 4, 2, 5, 4)
prob_2 <- dmultinom(x, size = n, prob = prob); prob_2

# Example 3
x <- c(1, 3, 5, 2, 4, 5)
prob_3 <- dmultinom(x, size = n, prob = prob); prob_3

