📌 Project Overview

The average stock market return is approximately 10% per year — but investors aim higher.

This project analyzes trends in high-growth unicorn companies to identify:

The top 3 industries producing the most unicorns

The rate at which unicorns emerged (2019–2021)

The average valuation (in billions USD) per industry per year

This provides strategic insight for investment portfolio decisions.

🗄️ Database Schema

The database contains four tables:

dates

funding

industries

companies

Key relationships are joined using company_id.

🎯 Objective

Return a table showing:

industry	year	num_unicorns	average_valuation_billions

For the top 3 industries (based on total unicorn count from 2019–2021).

🧠 SQL Strategy

Identify top 3 industries by unicorn count

Calculate yearly unicorn count per industry

Compute average valuation (converted to billions)

Filter to years 2019–2021

Order by most recent year and unicorn count
