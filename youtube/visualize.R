# Install and load required packages
install.packages("ggplot2")
library(ggplot2)

# Sample dataset
youtubers <- data.frame(
  date = seq(as.Date("2023-01-01"), as.Date("2023-01-31"), by = "day"),
  pewdiepie = c(110000000, 110100000, 110200000, 110300000, 110250000, 110400000, 110500000, 110550000, 110600000, 110650000,
                110700000, 110800000, 110850000, 110900000, 110920000, 110940000, 111000000, 111020000, 111050000, 111070000,
                111100000, 111130000, 111150000, 111180000, 111200000, 111230000, 111260000, 111300000, 111350000, 111400000),
  mrbeast = c(75000000, 75500000, 76000000, 76300000, 76600000, 77000000, 77500000, 77800000, 78200000, 78500000,
              79000000, 79500000, 80000000, 80500000, 80800000, 81200000, 81500000, 82000000, 82500000, 82800000,
              83200000, 83500000, 83800000, 84000000, 84500000, 85000000, 85500000, 86000000, 86500000, 87000000)
)

# Plotting the data
ggplot(youtubers, aes(x = date)) +
  geom_line(aes(y = pewdiepie, color = "PewDiePie"), size = 1.2) +
  geom_line(aes(y = mrbeast, color = "MrBeast"), size = 1.2) +
  labs(x = "Date", y = "Subscribers", color = "YouTuber") +
  scale_color_manual(values = c("PewDiePie" = "blue", "MrBeast" = "red")) +
  theme_minimal()

