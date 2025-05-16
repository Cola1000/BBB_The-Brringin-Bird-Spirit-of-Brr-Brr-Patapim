import mariadb
import sys

# Connect to MariaDB
try:
    conn = mariadb.connect(
        user="root",
        password="mariadb",
        host="localhost",
        port=3306,
        database="halobot"
    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

cur = conn.cursor()

# Disable foreign key checks temporarily
cur.execute("SET FOREIGN_KEY_CHECKS = 0")

# Drop tables in correct order
tables = [
    "dipesan",
    "komposisi_resep",
    "resep",
    "janji_temu",
    "log_baymin",
    "pemesanan_obat",
    "layanan_medis",
    "bekerja",
    "alamat",
    "baymin",
    "pasien",
    "tenaga_medis",
    "departemen",
    "obat",
    "rumah_sakit",
    "resep_item"
]

for table in tables:
    try:
        cur.execute(f"DROP TABLE IF EXISTS {table}")
        print(f"Dropped table: {table}")
    except mariadb.Error as e:
        print(f"Failed to drop table {table}: {e}")

# Re-enable foreign key checks
cur.execute("SET FOREIGN_KEY_CHECKS = 1")

conn.commit()
cur.close()
conn.close()

print("All specified tables dropped.")
