# Continuous and Discrete Probability Distributions in R

A group project for the **Theory of Statistics I** course at **BINUS University**, academic year **2024/2025**.

The project applies continuous and discrete probability distributions to two case studies: height and weight measurements using the **normal distribution**, and traffic-related scenarios using the **multinomial distribution**.

## Continuous Case Study

Using the **SOCR Height and Weight** dataset, the analysis:

- Calculates the mean, standard deviation, median, and mode for height and weight.
- Plots normal density curves using the sample mean and standard deviation.
- Calculates probabilities for selected height and weight ranges using `pnorm()`.

The dataset contains **25,000 records**, with height measured in inches and weight measured in pounds.

## Discrete Case Study

Using the **Urban Traffic Flow** dataset as the case-study context, the script selects `Vehicle_Count` and `Congestion_Level`.

It then calculates probabilities for three multinomial scenarios using `dmultinom()`, each with **20 trials** and six category probabilities:

```r
c(0.32, 0.32, 0.18, 0.12, 0.04, 0.02)
```

These probabilities are entered directly in the script rather than calculated from the dataset within the code.

## Tools

**R**, using built-in functions for descriptive statistics, probability calculations, and plotting. No additional R packages are loaded.

## Project Files

| File | Description |
| --- | --- |
| `Compute.R` | Statistical calculations and normal density plots |
| `SOCR-HeightWeight.csv` | Height and weight dataset |
| `UrbanTrafficFlowDataset.csv` | Traffic dataset containing 200 records |
| `AOL - Continuous .pdf` | Presentation on continuous variables and the normal distribution |
| `AOL - Discrete.pdf` | Presentation on discrete variables and the multinomial distribution |
| `Case Study.pdf` | Assignment instructions and assessment criteria |

## How to Run

Open `Compute.R` in R or RStudio and execute the code in order.

1. Select `SOCR-HeightWeight.csv` when the first file-selection window opens.
2. Select `UrbanTrafficFlowDataset.csv` when the second window opens.
3. Review the calculated values and generated plots.

Both datasets use semicolons as separators, as specified in the script.

## Authors

**Group 1 — AMOEBA**

- Anthony
- Hazel Zaki Adityo
- Kelvin Fardiman
- Kyan Pratama L.
- Marcell Prasetyo
- Satya Darma P.
