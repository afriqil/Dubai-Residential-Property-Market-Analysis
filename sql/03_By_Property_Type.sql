-- Distribution by Property Type
SELECT
  prop_sb_type_en AS property_type,
  COUNT(*) AS total_count,
  ROUND(AVG(price_per_sqm), 2) AS avg_price_per_sqm,
  ROUND(SUM(trans_value) / 1000000, 2) AS total_value_million_aed
FROM `transaksi-properti-dubai-2026.dubai_real_estate.cleaned_property_transactions_2026`
GROUP BY prop_sb_type_en
ORDER BY total_count DESC;