-- Report 1: Revenue by city (Delivered only)
SELECT city,
       ROUND(SUM(net_amount), 2) AS delivered_net_revenue
FROM orders
WHERE status = 'Delivered'
GROUP BY city
ORDER BY delivered_net_revenue DESC;

-- Report 2: Top 5 categories by delivered revenue
SELECT category,
       ROUND(SUM(net_amount), 2) AS delivered_net_revenue
FROM orders
WHERE status = 'Delivered'
GROUP BY category
ORDER BY delivered_net_revenue DESC
LIMIT 5;

-- Report 3: Operational metrics (return/cancel rate + AOV delivered)
SELECT
  ROUND(100.0 * SUM(CASE WHEN status IN ('Returned','Cancelled') THEN 1 ELSE 0 END) / COUNT(*), 2) AS return_cancel_rate_pct,
  ROUND(AVG(CASE WHEN status='Delivered' THEN net_amount END), 2) AS avg_order_value_delivered
FROM orders;
