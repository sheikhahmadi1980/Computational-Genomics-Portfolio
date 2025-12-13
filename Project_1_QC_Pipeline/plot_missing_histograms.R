# Load the ggplot2 library
library(ggplot2)

# Define relative paths for input and output files
# This tells R to look in the CURRENT directory
imiss_path <- "sim_missing_stats.imiss"
lmiss_path <- "sim_missing_stats.lmiss"
sample_plot_path <- "sample_missingness_hist.png"
snp_plot_path <- "snp_missingness_hist.png"

# Read the data from the current directory
imiss <- read.table(imiss_path, header=TRUE)
lmiss <- read.table(lmiss_path, header=TRUE)

# Create and save the first plot
ggplot(imiss, aes(x=F_MISS)) + 
  geom_histogram(bins=30, fill="blue", alpha=0.7) + 
  labs(title="Histogram of Sample Missingness", x="Missing Rate per Sample")
ggsave(sample_plot_path)

# Create and save the second plot
ggplot(lmiss, aes(x=F_MISS)) + 
  geom_histogram(bins=30, fill="red", alpha=0.7) + 
  labs(title="Histogram of SNP Missingness", x="Missing Rate per SNP")
ggsave(snp_plot_path)

print("Script finished successfully. Plots have been saved in the current directory.")



