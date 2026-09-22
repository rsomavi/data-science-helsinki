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
- week3/ - Geospatial data (GIS), symbol classification (HASYv2)
- week4/ - Zero/one/two-shot prompting with a generative language model
- week5/ - GDPR privacy report, fairness-aware AI (direct vs indirect discrimination)

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

## Week 3

### Exercise 1 - Working with geospatial data (GIS)
- Reading shapefiles with Geopandas (world borders, capital cities)
- Inspecting and comparing coordinate reference systems (CRS)
- Plotting layers with mismatched CRS (cities collapsing near origin)
- Reprojecting with `.to_crs()` to align both datasets correctly

### Exercise 2 - Symbol classification (HASYv2)
- Filtering the HASYv2 dataset to a 10-class digit classification task
- Reading and flattening images to 1024-length vectors
- Train/test split (80/20) with reproducible shuffling
- Multinomial logistic regression classifier
- Baseline comparison against a majority-class DummyClassifier
- Visualizing and interpreting misclassified digits

## Week 4

### Exercise 1 - Prompting a generative language model
- Loading `gpt2-large` via Hugging Face `transformers` pipeline
- Zero-shot, one-shot and two-shot prompting on three tasks: binary sentiment
  classification, person name recognition, and two-digit addition
- Comparing task performance across shot counts, with 2 test cases per task
- Analysis of failure modes (recency bias, hallucination, lack of arithmetic
  capability in generative language models)

## Week 5

### Exercise 1 - Privacy and data protection (GDPR)
- Reviewing a real service's consent mechanism against Art 4(11)/Art 6(1)(a)/Art 7 GDPR
- Exercising the right of access via Google Takeout, documented against Art 15/Art 20/Art 12 GDPR
- Anonymisation vs. pseudonymisation (Art 4(5) GDPR)
- Submitted as `week5/week5_exercise1_privacy_report.pdf`

### Exercise 2 - Fairness-aware AI
- Simulating salary/hours data under direct, no, and indirect discrimination scenarios
- Demonstrating that a gender-blind regression only detects indirect discrimination
  (Simpson's paradox), not direct discrimination applied as a flat adjustment
- Auditing for bias by explicitly including the protected attribute as a covariate
