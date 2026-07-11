-- Average Price & Transaction Count by Area
SELECT
  area_en AS area,
  COUNT(*) AS number_of_transactions,
  ROUND(AVG(price_per_sqm), 2) AS avg_price_per_sqm,
  ROUND(MAX(price_per_sqm), 2) AS highest_price,
  ROUND(MIN(price_per_sqm), 2) AS lowest_price
FROM `transaksi-properti-dubai-2026.dubai_real_estate.cleaned_property_transactions_2026`
GROUP BY area_en
ORDER BY avg_price_per_sqm DESC;