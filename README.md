# Mini ETL: CSV to SQLite

A small data engineering project that loads a cleaned CSV dataset into a SQLite database and provides ready-to-run reporting queries.

## Files
- `data/cleaned_orders.csv`: input dataset
- `etl.py`: loads CSV into SQLite (`orders` table)
- `db.sqlite`: generated SQLite database
- `reports.sql`: reporting queries

## How to run
```bash
pip install pandas
python etl.py
```

## Sample outputs

### Report 1: Revenue by City (Top 5)
| city     |   delivered_net_revenue |
|:---------|------------------------:|
| Ankara   |                 30462.4 |
| Antalya  |                 29480.7 |
| Bursa    |                 27715.7 |
| Istanbul |                 19221.8 |
| Unknown  |                 16231.8 |

### Report 2: Top Categories by Delivered Revenue
| category    |   delivered_net_revenue |
|:------------|------------------------:|
| Fashion     |                 44787.2 |
| Electronics |                 32210.4 |
| Food        |                 21174   |
| Sports      |                 19634.8 |
| Tourism     |                 10514.9 |

### Report 3: Operational Metrics
|   return_cancel_rate_pct |   avg_order_value_delivered |
|-------------------------:|----------------------------:|
|                    33.57 |                     1487.38 |
