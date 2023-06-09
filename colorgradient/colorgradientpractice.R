library(ggplot2)

# Create some data
x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, 5)
labels <- c("A", "B", "C", "D", "E")
curvature <- c(0.2, 0.4, 0.6, 0.8, 1.0)

data <- data.frame(x, y, labels, curvature)

# Create a color gradient palette
colors <- colorRampPalette(c("blue", "red"))

# Create the plot
ggplot(data, aes(x, y, label = labels, color = curvature)) +
  geom_curve(aes(x = x, y = y + 0.5, xend = x + curvature, yend = y - 0.5),
             curvature = 0.1, arrow = arrow(length = unit(0.03, "npc")),
             size = 1.5, lineend = "round") +
  geom_text(size = 4, vjust = 1.5, color = "black") +
  scale_color_gradientn(colors = colors(5), limits = c(0, 1),
                        breaks = seq(0, 1, by = 0.2), labels = seq(0, 1, by = 0.2)) +
  theme_minimal()

