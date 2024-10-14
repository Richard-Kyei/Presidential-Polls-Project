# Presidential Polls Data Cleaning Project

## Project Overview
This project involves retrieving, cleaning, and analyzing presidential polls data from two datasets. The data was cleaned to handle missing values, combined into a single dataset, and visualized using histograms and boxplots.

## Steps Taken

### 1. Data Loading
The project started by loading two datasets:
- `presidential_polls_2020.csv`
- `presidential_polls_2020b.csv`

These files were read into R using the `read_csv()` function from the `readr` package.

### 2. Data Cleaning
- **Inconsistent Data Types**: The columns `influence` and `tracking` had inconsistent data types across the datasets. The `influence` column was converted to `numeric`, and the `tracking` column was converted to `character` to allow for proper combination of the datasets.
- **Missing Values**: Missing values were either dropped or filled with the median values in numeric columns using the `mutate_if()` function.
- **Combining Datasets**: The datasets were combined into a single dataset using the `bind_rows()` function from the `dplyr` package.

### 3. Data Visualization
- A histogram was created for the `pct` (percentage) column to visualize the distribution of percentage values.
- A boxplot was created for the `samplesize` column to understand the spread of sample sizes in the data.

### 4. Saving the Cleaned Data
The cleaned dataset was saved as `cleaned_presidential_polls_2020.csv` using the `write_csv()` function.

## Files in this Repository
- `cleaned_presidential_polls_2020.csv`: The cleaned and combined dataset.
- `data_cleaning.R`: The R script used for data cleaning and analysis.
- `presidential_polls_2020.csv` and `presidential_polls_2020b.csv`: The original datasets.

## Conclusion
This project cleaned and visualized the presidential polls data, and the cleaned dataset is ready for further analysis.
