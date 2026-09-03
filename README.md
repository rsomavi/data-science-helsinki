# Introduction to Data Science 2026 - University of Helsinki

Exercises for the Introduction to Data Science course at the University of Helsinki.

## Setup

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

## Structure

- week1/ - NumPy, text processing (Amazon reviews), SQL basics

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
