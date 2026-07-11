-- Overall Market Summary
SELECT
  COUNT(*) AS total_transactions,
  ROUND(AVG(price_per_sqm), 2) AS avg_price_per_sqm,
  ROUND(MIN(price_per_sqm), 2) AS min_price_per_sqm,
  ROUND(MAX(price_per_sqm), 2) AS max_price_per_sqm,
  ROUND(SUM(trans_value) / 1000000, 2) AS total_transaction_value_million_aed
FROM `transaksi-properti-dubai-2026.dubai_real_estate.cleaned_property_transactions_2026`;