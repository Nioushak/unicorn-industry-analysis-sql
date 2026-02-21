WITH top_industries AS (
	SELECT
		count(*) AS top_industry,
		i.industry
	FROM
		dates d
		JOIN industries i
			ON d.company_id = i.company_id
	WHERE EXTRACT(YEAR FROM d.date_joined) IN (2019, 2020, 2021)
	GROUP BY i.industry
	ORDER BY 
		top_industry DESC
	LIMIT 3
),
yearly_count AS (
	SELECT
		count(d.company_id) AS num_unicorn,
		EXTRACT(YEAR FROM d.date_joined) AS year,
		i.industry,
		avg(f.valuation) AS avg_valuation
	FROM
		dates d
		JOIN industries i
			ON d.company_id = i.company_id
		JOIN funding f
			ON d.company_id = f.company_id
	GROUP BY
		i.industry, year
)
SELECT
	industry,
	year,
	num_unicorn,
	ROUND((avg_valuation) / 1000000000, 2) AS average_valuation_billions
FROM
	yearly_count
WHERE 
	year IN (2019, 2020, 2021) 
	AND industry IN (SELECT industry FROM top_industries)
GROUP BY 
	num_unicorn, year, industry, avg_valuation
ORDER BY 
	year DESC, num_unicorn DESC;
