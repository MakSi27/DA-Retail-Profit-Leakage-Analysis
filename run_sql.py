import sqlite3
import pandas as pd

try:
    # Load CSV
    csv_path = 'c:/Users/Mayank/OneDrive/Desktop/DA-mini-project/Mayank/SQL/dataset/retail_processed_data.csv'
    df = pd.read_csv(csv_path)

    # Connect to in-memory db
    conn = sqlite3.connect(':memory:')
    df.to_sql('retail_processed_data', conn, index=False)

    # Read SQL
    sql_path = 'c:/Users/Mayank/OneDrive/Desktop/DA-mini-project/Mayank/SQL/retail_processed_data_analysis.sql'
    with open(sql_path, 'r') as f:
        sql_script = f.read()

    queries = [q.strip() for q in sql_script.split(';') if q.strip()]

    md_output = "# SQL Analysis Results\n\nThese are the results of running `retail_processed_data_analysis.sql` against your processed dataset.\n\n"

    for i, query in enumerate(queries, 1):
        try:
            res = pd.read_sql_query(query, conn)
            # Find the comment right above the query in the original script if possible, but that's complex
            # We'll just display the query code beautifully.
            md_output += f"### Query\n"
            md_output += f"```sql\n{query};\n```\n\n"
            
            # Use pandas to write markdown, but handle large tables
            if res.empty:
                md_output += "*No rows returned.*\n\n"
            else:
                # Limit to 15 rows if it's huge, to avoid blowing up the markdown file unnecessarily
                if len(res) > 20:
                    md_output += res.head(15).to_markdown(index=False) + "\n\n*(Showing top 15 rows)*\n\n"
                else:
                    md_output += res.to_markdown(index=False) + "\n\n"
        except Exception as e:
            md_output += f"### Query {i}\n"
            md_output += f"```sql\n{query};\n```\n\n"
            md_output += f"**Error executing query:** `{str(e)}`\n\n"

    conn.close()

    # We will just print the markdown to stdout so Antigravity can capture it, or save to file
    with open('c:/Users/Mayank/OneDrive/Desktop/DA-mini-project/analysis_results.md', 'w') as f:
        f.write(md_output)

    print("Success")

except Exception as e:
    print(f"Failed: {e}")
