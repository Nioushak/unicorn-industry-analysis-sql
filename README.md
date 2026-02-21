# 📈 Unicorn Industry Growth Analysis (SQL)

## Project Overview

Investors seek industries with the highest growth potential.
This project analyzes global **unicorn companies** (private startups valued at over $1 billion) to identify which industries are producing the most high-value companies and how valuations evolved between **2019 and 2021**.

The analysis simulates a real business task: supporting an investment firm in deciding how to structure a forward-looking portfolio.

---

## Objectives

The goal of this analysis is to:

* Identify the **top 3 industries** generating unicorn companies
* Measure how many unicorns emerged each year (2019–2021)
* Calculate the **average company valuation (in billions USD)** per industry per year
* Provide insight into industry growth trends

---

## Database Structure

The dataset is stored in a relational SQL database composed of four tables:

### `dates`

| Column       | Description                       |
| ------------ | --------------------------------- |
| company_id   | Unique company identifier         |
| date_joined  | Date the company became a unicorn |
| year_founded | Year the company was founded      |

### `funding`

| Column           | Description                |
| ---------------- | -------------------------- |
| company_id       | Unique company identifier  |
| valuation        | Company valuation (USD)    |
| funding          | Total funding raised (USD) |
| select_investors | Key investors              |

### `industries`

| Column     | Description               |
| ---------- | ------------------------- |
| company_id | Unique company identifier |
| industry   | Industry classification   |

### `companies`

| Column     | Description               |
| ---------- | ------------------------- |
| company_id | Unique company identifier |
| company    | Company name              |
| city       | Headquarters city         |
| country    | Headquarters country      |
| continent  | Headquarters continent    |

All tables are joined using **company_id**.

---

## Methodology

The analysis was performed in PostgreSQL using a multi-step SQL query:

1. **Find the top 3 industries** based on total unicorn count (2019–2021)
2. Compute yearly unicorn formation per industry
3. Calculate the average valuation
4. Convert valuation from USD to **billions of dollars**
5. Filter results to only the top industries
6. Sort results by most recent year and highest unicorn count

The full SQL query is available in:

```
unicorn_analysis.sql
```

---

## Output

The final query returns a table in the following format:

| industry   | year | num_unicorns | average_valuation_billions |
| ---------- | ---- | ------------ | -------------------------- |
| Industry A | 2021 | —            | —                          |
| Industry B | 2020 | —            | —                          |
| Industry C | 2019 | —            | —                          |

---

## Key SQL Concepts Used

* Common Table Expressions (CTEs)
* JOIN operations across multiple tables
* Aggregate functions (`COUNT`, `AVG`)
* Date extraction using `EXTRACT(YEAR FROM date)`
* Subqueries
* Data normalization (USD → billions)
* Filtering and sorting grouped data

---

## Business Insight

This type of analysis helps investors:

* Identify high-growth sectors
* Track market expansion over time
* Allocate capital toward industries with strong valuation growth

Understanding where unicorn companies are emerging provides a proxy indicator for **future dominant markets**.

---

## Skills Demonstrated

* SQL data analysis
* Relational database querying
* Financial data aggregation
* Analytical thinking for business decision-making
* Data storytelling

