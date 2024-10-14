# Install and load the necessary packages
install.packages("tidyverse")
install.packages("readr")
library(tidyverse)
library(readr)

# Load the CSV files
data1 <- read_csv("C:/Users/kofik/OneDrive/Desktop/McDaniel/Data Preparation/Practicum/presidential_polls_2020.csv")
data2 <- read_csv("C:/Users/kofik/OneDrive/Desktop/McDaniel/Data Preparation/Practicum/presidential_polls_2020b.csv")

# Check the first few rows of both datasets
head(data1)
head(data2)


# Convert 'influence' to numeric in both datasets (because it contains numeric values)
data1$influence <- as.numeric(data1$influence)
data2$influence <- as.numeric(data2$influence)

# Convert 'tracking' to character in both datasets
data1$tracking <- as.character(data1$tracking)
data2$tracking <- as.character(data2$tracking)

# Combine the two datasets
combined_data <- bind_rows(data1, data2)

# Check the structure of the combined dataset
str(combined_data)


# Fill missing values in numeric columns with the median
combined_cleaned <- combined_data %>% 
  mutate_if(is.numeric, ~ifelse(is.na(.), median(., na.rm = TRUE), .))

# Create a histogram for the 'pct' (percentage) column
ggplot(combined_cleaned, aes(x = pct)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  ggtitle("Histogram of Pct (Percentage)")


# Create a boxplot for the 'samplesize' column
ggplot(combined_cleaned, aes(y = samplesize)) +
  geom_boxplot() +
  ggtitle("Boxplot of Sample Size")

# Save the cleaned data to a CSV file
write_csv(combined_cleaned, "C:/Users/kofik/OneDrive/Desktop/McDaniel/Data Preparation/Practicum/cleaned_presidential_polls_2020.csv")


