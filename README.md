# Introduction to Data Science 2026 - University of Helsinki

Exercises for the Introduction to Data Science course at the University of Helsinki.

## Setup

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Structure

- week1/ - NumPy, text processing (Amazon reviews), SQL basics
- week2/ - Titanic preprocessing, EDA, TF-IDF, junk charts

## Week 1

### Exercise 1 - Matrix warm-up
- Array creation and element-wise operations (for loop vs NumPy)
- Array manipulation: reshape, tile, identity matrices
- Determinant properties: det(DE) = det(D) * det(E)
- Slicing on the California Housing dataset

### Exercise 2 - Working with text data
- Loading Amazon Automotive reviews (1.7M reviews from JSON)
- Text normalization: downcasing, punctuation removal, stopword removal, stemming (NLTK Snowball)
- Filtering positive and negative reviews into separate files

### Exercise 3 - SQL basics
- Queries on the Northwind 2000 SQLite database
- Employee filtering, order counting, JOINs, NULL handling, aggregation

## Week 2

### Exercise 1 - Titanic: data preprocessing and imputation
- Reading and reshaping the Titanic dataset (train.csv)
- Dropping non-predictive columns (PassengerId, Name, Ticket)
- Feature extraction: deck letter from Cabin
- Label encoding of categorical variables
- Missing value imputation: mean (continuous), mode (categorical)
- Export to CSV and JSON

### Exercise 2 - Titanic 2.0: exploratory data analysis
- Mode/median per feature, split by survival status
- "Average survivor" / "average non-survivor" profiles
- Distribution comparison between groups (describe, matching passengers)
- Bivariate/multivariate scatter plots (jitter, pairplot) colored by survival
- Reflection on the effect of mean/mode imputation vs. dropping rows

### Exercise 3 - Working with text data 2.0
- Most common words in positive/negative reviews (raw frequency)
- TF-IDF vectors with scikit-learn (2 x m matrix)
- Comparison of top TF-IDF words vs. raw frequency words
- Visualization: word clouds and bar charts

### Exercise 4 - Junk charts
- Three real-world charts with distinct issues: truncated y-axis, dual y-axis, misleading pie chart
- Improved versions of each, redesigned with matplotlib
- Full write-up: `week2/week2_exercise4_junk_charts.pdf`
