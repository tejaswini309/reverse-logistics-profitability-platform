# Data Profiling Report

## Dataset Overview

### Orders Dataset
Rows: 99,441
Columns: 8

### Order Items Dataset
Rows: 112,650
Columns: 7

### Products Dataset
Rows: 32,951
Columns: 9

### Reviews Dataset
Rows: 99,224
Columns: 7

### Customers Dataset
Rows: 99,441
Columns: 5

---

## Data Quality Issues Identified

- Missing values exist in review_comment_title and review_comment_message columns.
- Missing values are present in product_category_name.
- Date-related columns require conversion to datetime format.
- Product category names are in Portuguese and need translation using the product_category_name_translation dataset.
- Duplicate records need to be verified and removed if found.

---

## Cleaning Strategy

- Handle missing values appropriately.
- Remove duplicate records.
- Convert date columns into datetime format.
- Translate Portuguese category names into English.
- Validate primary key and foreign key relationships.
- Standardize categorical variables.
- Ensure data consistency before SQL analysis.

---

## Key Observations

- Orders and Customers datasets contain the same number of records (99,441), indicating a one-to-one relationship at the order level.
- Order Items dataset contains more rows because a single order may contain multiple products.
- Reviews dataset has slightly fewer records than Orders, suggesting that not all customers submitted reviews.
- Products dataset provides category-level information useful for return analysis and profitability assessment.