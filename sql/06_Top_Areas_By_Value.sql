-- Top 10 Areas by Market Value
SELECT
  area_en AS area,
  COUNT(*) AS number_of_deals,
  ROUND(SUM(trans_value) / 1000000, 2) AS total_value_million_aed,
  ROUND(AVG(price_per_sqm), 2) AS avg_price_per_sqm
FROM `transaksi-properti-dubai-2026.dubai_real_estate.cleaned_property_transactions_2026`
GROUP BY area_en
ORDER BY total_value_million_aed DESC
LIMIT 10;