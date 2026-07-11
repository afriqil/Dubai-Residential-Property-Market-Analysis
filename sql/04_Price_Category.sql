-- Number of Transactions by Price Segment
SELECT
  CASE
    WHEN price_per_sqm < 10000 THEN 'Economy'
    WHEN price_per_sqm BETWEEN 10000 AND 19999 THEN 'Mid-range'
    WHEN price_per_sqm BETWEEN 20000 AND 34999 THEN 'Luxury'
    ELSE 'Ultra Luxury'
  END AS price_category,
  COUNT(*) AS total_units,
  ROUND(AVG(price_per_sqm), 2) AS avg_price
FROM `transaksi-properti-dubai-2026.dubai_real_estate.cleaned_property_transactions_2026`
GROUP BY price_category
ORDER BY avg_price;