# Load necessary libraries
library(ggplot2)
library(pheatmap)
library(grid)


# Read data (ensure your data file is formatted as tab-delimited or modify accordingly)
data <- read.table("Your Path/Data.tsv", header = TRUE, row.names = 1, sep = "\t")
data


pheatmap(
  data,                   # Data
  scale = "column",                     # Scale each row (optional)
  clustering_distance_rows = "euclidean", # Distance metric for rows
  clustering_distance_cols = "euclidean", # Distance metric for columns
  clustering_method = "complete",         # Clustering method
  fontsize_row = 5,                   # Adjust row font size for readability
  fontsize_col = 8,                   # Adjust column font size
  # scale by row
  main = "Clustering Heatmap of Variant Impacts"
)

# Save the heatmap as a high-resolution PDF
pdf("Your Path/clustering_heatmap.pdf", width = 6, height = 12) # Set width and height in inches
pheatmap(data, scale = "column", clustering_distance_rows = "euclidean", clustering_distance_cols = "euclidean", clustering_method = "complete", color = colorRampPalette(c("blue", "white", "red"))(100), fontsize_row = 5, fontsize_col = 8, main = "Clustering Heatmap of Variant Impacts")
dev.off()


