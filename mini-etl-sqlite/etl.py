import pandas as pd
import sqlite3
from pathlib import Path

DATA_PATH = Path("data/cleaned_orders.csv")
DB_PATH = Path("db.sqlite")

def main():
    df = pd.read_csv(DATA_PATH)

    con = sqlite3.connect(DB_PATH)
    df.to_sql("orders", con, if_exists="replace", index=False)

    # quick check
    rows = pd.read_sql_query("SELECT COUNT(*) AS rows FROM orders;", con)
    print(rows.to_string(index=False))

    con.close()

if __name__ == "__main__":
    main()
