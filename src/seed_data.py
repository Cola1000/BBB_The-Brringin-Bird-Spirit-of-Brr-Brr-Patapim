import mariadb
import sys
from faker import Faker
import uuid
import random
from datetime import datetime, timedelta

# Initialize Faker
fake = Faker('id_ID')

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

# Get Cursor
cur = conn.cursor()

# Helper function
def execute_sql(sql, values=None, desc=""):
    try:
        if values:
            if isinstance(values, list) and isinstance(values[0], (list, tuple)):
                cur.executemany(sql, values)
            else:
                cur.execute(sql, values)
        else:
            cur.execute(sql)
        conn.commit()
        print(f"[OK] {desc}")
    except mariadb.Error as e:
        print(f"[ERROR] {desc}: {e}")

# Clear all tables first (for testing purposes)
tables = [
    "log_baymin", "dipesan", "komposisi_resep", "pemesanan_obat", 
    "resep_item", "resep", "baymin", "alamat", "janji_temu", 
    "layanan_medis", "bekerja", "departemen", "obat", 
    "tenaga_medis", "pasien", "rumah_sakit"
]

for table in tables:
    execute_sql(f"DELETE FROM {table}", desc=f"Clearing table {table}")

# ------------------ SEEDING TABLES WITHOUT FOREIGN KEYS ------------------

# Seed rumah_sakit (min 20)
rumah_sakit_data = [(str(uuid.uuid4()), fake.company()) for _ in range(20)]
execute_sql("INSERT INTO rumah_sakit (id, nama) VALUES (?, ?)", rumah_sakit_data, "Seeding rumah_sakit")

# Seed obat (min 20)
obat_data = []
for _ in range(20):
    nama_obat = fake.word().capitalize() + " " + fake.word().capitalize()
    harga = random.randint(5000, 500000)
    label = random.choice(["Obat Bebas", "Obat Keras", "Obat Herbal", "Obat Resep"])
    obat_data.append((str(uuid.uuid4()), nama_obat, harga, label))
execute_sql("INSERT INTO obat (id, nama, harga, label) VALUES (?, ?, ?, ?)", obat_data, "Seeding obat")

# Seed pasien (min 20)
pasien_data = []
for _ in range(20):
    email = fake.unique.email()
    password = fake.password()
    nama_lengkap = fake.name()
    tanggal_lahir = fake.date_of_birth(minimum_age=18, maximum_age=90)
    nomor_telepon = fake.phone_number()
    pasien_data.append((str(uuid.uuid4()), email, password, nama_lengkap, tanggal_lahir, nomor_telepon))
execute_sql("INSERT INTO pasien (id, email, password, nama_lengkap, tanggal_lahir, nomor_telepon) VALUES (?, ?, ?, ?, ?, ?)", pasien_data, "Seeding pasien")

# Seed tenaga_medis (min 20)
tenaga_medis_data = []
profesi = ["Dokter Umum", "Dokter Spesialis", "Perawat", "Bidan", "Apoteker", "Fisioterapis"]
for _ in range(20):
    email = fake.unique.email()
    password = fake.password()
    nama_lengkap = fake.name()
    tanggal_lahir = fake.date_of_birth(minimum_age=23, maximum_age=65)
    nomor_telepon = fake.phone_number()
    nikes = str(fake.unique.random_number(digits=10))
    jenis_profesi = random.choice(profesi)
    tenaga_medis_data.append((str(uuid.uuid4()), email, password, nama_lengkap, tanggal_lahir, nomor_telepon, nikes, jenis_profesi))
execute_sql("INSERT INTO tenaga_medis (id, email, password, nama_lengkap, tanggal_lahir, nomor_telepon, nikes, jenis_profesi) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", tenaga_medis_data, "Seeding tenaga_medis")

# Get all IDs for reference
cur.execute("SELECT id FROM rumah_sakit")
rumah_sakit_ids = [row[0] for row in cur.fetchall()]

cur.execute("SELECT id FROM pasien")
pasien_ids = [row[0] for row in cur.fetchall()]

cur.execute("SELECT id FROM tenaga_medis")
tenaga_medis_ids = [row[0] for row in cur.fetchall()]

cur.execute("SELECT id FROM obat")
obat_ids = [row[0] for row in cur.fetchall()]

# ------------------ SEEDING TABLES WITH FOREIGN KEYS ------------------

# Seed departemen (ref rumah_sakit: 1 FK → min 1×50=50)
departemen_data = []
gedung = ["A", "B", "C", "D", "E"]
for _ in range(50):
    nama = fake.word().capitalize() + " Department"
    gedung_nama = random.choice(gedung)
    rumah_sakit_id = random.choice(rumah_sakit_ids)
    departemen_data.append((str(uuid.uuid4()), nama, gedung_nama, rumah_sakit_id))
execute_sql("INSERT INTO departemen (id, nama, gedung, rumah_sakit_id) VALUES (?, ?, ?, ?)", departemen_data, "Seeding departemen")

# Get departemen IDs
cur.execute("SELECT id FROM departemen")
departemen_ids = [row[0] for row in cur.fetchall()]

# Seed bekerja (ref tenaga_medis, departemen: 2 FKs → min 2×50=100)
bekerja_data = []
for _ in range(100):
    tenaga_medis_id = random.choice(tenaga_medis_ids)
    departemen_id = random.choice(departemen_ids)
    bekerja_data.append((str(uuid.uuid4()), tenaga_medis_id, departemen_id))
execute_sql("INSERT INTO bekerja (id, tenaga_medis_id, departemen_id) VALUES (?, ?, ?)", bekerja_data, "Seeding bekerja")

# Seed alamat (ref pasien: 1 FK → min 1×50=50)
alamat_data = []
for _ in range(50):
    provinsi = fake.state()
    kota = fake.city()
    jalan = fake.street_address()
    pasien_id = random.choice(pasien_ids)
    alamat_data.append((str(uuid.uuid4()), provinsi, kota, jalan, pasien_id))
execute_sql("INSERT INTO alamat (id, provinsi, kota, jalan, pasien_id) VALUES (?, ?, ?, ?, ?)", alamat_data, "Seeding alamat")

# Get alamat IDs
cur.execute("SELECT id FROM alamat")
alamat_ids = [row[0] for row in cur.fetchall()]

# Seed janji_temu (ref tenaga_medis, pasien: 2 FKs → min 2×50=100)
janji_temu_data = []
for _ in range(100):
    alasan_konsultasi = fake.sentence()
    waktu_pelaksanaan = fake.date_time_between(start_date="now", end_date="+1y")
    tenaga_medis_id = random.choice(tenaga_medis_ids)
    pasien_id = random.choice(pasien_ids)
    janji_temu_data.append((str(uuid.uuid4()), alasan_konsultasi, waktu_pelaksanaan, tenaga_medis_id, pasien_id))
execute_sql("INSERT INTO janji_temu (id, alasan_konsultasi, waktu_pelaksanaan, tenaga_medis_id, pasien_id) VALUES (?, ?, ?, ?, ?)", janji_temu_data, "Seeding janji_temu")

# Get janji_temu IDs
cur.execute("SELECT id FROM janji_temu")
janji_temu_ids = [row[0] for row in cur.fetchall()]

# Seed resep (ref janji_temu: 1 FK → min 1×50=50)
resep_data = []
for i in range(len(janji_temu_ids)):
    janji_temu_id = janji_temu_ids[i]
    resep_data.append((str(uuid.uuid4()), janji_temu_id))
execute_sql("INSERT INTO resep (id, janji_temu_id) VALUES (?, ?)", resep_data, "Seeding resep")

# Get resep IDs
cur.execute("SELECT id FROM resep")
resep_ids = [row[0] for row in cur.fetchall()]

# Seed resep_item (ref obat: 1 FK → min 1×50=50)
resep_item_data = []
for _ in range(50):
    dosis = f"{random.randint(1, 4)}x{random.randint(1, 3)} tablet"
    cara_pakai = random.choice(["Sebelum makan", "Sesudah makan", "Bersamaan dengan makan", "Dioleskan", "Dikompres"])
    obat_id = random.choice(obat_ids)
    resep_item_data.append((str(uuid.uuid4()), dosis, cara_pakai, obat_id))
execute_sql("INSERT INTO resep_item (id, dosis, cara_pakai, obat_id) VALUES (?, ?, ?, ?)", resep_item_data, "Seeding resep_item")

# Get resep_item IDs
cur.execute("SELECT id FROM resep_item")
resep_item_ids = [row[0] for row in cur.fetchall()]

# Seed komposisi_resep (ref resep, resep_item: 2 FKs → min 2×50=100)
komposisi_resep_data = []
for _ in range(100):
    resep_id = random.choice(resep_ids)
    resep_item_id = random.choice(resep_item_ids)
    komposisi_resep_data.append((str(uuid.uuid4()), resep_id, resep_item_id))
execute_sql("INSERT INTO komposisi_resep (id, resep_id, resep_item_id) VALUES (?, ?, ?)", komposisi_resep_data, "Seeding komposisi_resep")

# Seed baymin (ref pasien: 1 FK → min 1×50=50)
baymin_data = []
firmware_versions = ["1.0.0", "1.1.0", "1.2.3", "2.0.1", "2.1.0"]
for i in range(len(pasien_ids)):
    firmware = random.choice(firmware_versions)
    pasien_id = pasien_ids[i]
    baymin_data.append((str(uuid.uuid4()), firmware, pasien_id))
execute_sql("INSERT INTO baymin (id, firmware, pasien_id) VALUES (?, ?, ?)", baymin_data, "Seeding baymin")

# Get baymin IDs
cur.execute("SELECT id FROM baymin")
baymin_ids = [row[0] for row in cur.fetchall()]

# Seed log_baymin (ref pasien, baymin: 2 FKs → min 2×50=100)
log_baymin_data = []
tindakan = ["Pemeriksaan", "Pengobatan", "Monitoring", "Pemberian Obat", "Konsultasi"]
for _ in range(100):
    waktu_penggunaan = fake.date_time_between(start_date="-1y", end_date="now")
    jenis_tindakan = random.choice(tindakan)
    pasien_id = random.choice(pasien_ids)
    baymin_id = random.choice(baymin_ids)
    log_baymin_data.append((str(uuid.uuid4()), waktu_penggunaan, jenis_tindakan, pasien_id, baymin_id))
execute_sql("INSERT INTO log_baymin (id, waktu_penggunaan, jenis_tindakan, pasien_id, baymin_id) VALUES (?, ?, ?, ?, ?)", log_baymin_data, "Seeding log_baymin")

# Seed pemesanan_obat (ref alamat, rumah_sakit: 2 FKs → min 2×50=100)
pemesanan_obat_data = []
statuses = ["belum dibayar", "dijadwalkan", "sedang berlangsung", "selesai", "dibatalkan"]
for _ in range(100):
    status = random.choice(statuses)
    alamat_id = random.choice(alamat_ids)
    rumah_sakit_id = random.choice(rumah_sakit_ids)
    pemesanan_obat_data.append((str(uuid.uuid4()), status, alamat_id, rumah_sakit_id))
execute_sql("INSERT INTO pemesanan_obat (id, status, alamat_id, rumah_sakit_id) VALUES (?, ?, ?, ?)", pemesanan_obat_data, "Seeding pemesanan_obat")

# Get pemesanan_obat IDs
cur.execute("SELECT id FROM pemesanan_obat")
pemesanan_obat_ids = [row[0] for row in cur.fetchall()]

# Seed dipesan (ref pemesanan_obat, obat: 2 FKs → min 2×50=100)
dipesan_data = []
for _ in range(100):
    jumlah = random.randint(1, 10)
    pemesanan_obat_id = random.choice(pemesanan_obat_ids)
    obat_id = random.choice(obat_ids)
    dipesan_data.append((str(uuid.uuid4()), jumlah, pemesanan_obat_id, obat_id))
execute_sql("INSERT INTO dipesan (id, jumlah, pemesanan_obat_id, obat_id) VALUES (?, ?, ?, ?)", dipesan_data, "Seeding dipesan")

# Seed layanan_medis (ref pasien, rumah_sakit: 2 FKs → min 2×50=100)
layanan_medis_data = []
jenis_layanan = ["Rawat Jalan", "Rawat Inap", "UGD", "Operasi", "Konsultasi", "ICU"]
for _ in range(100):
    status = random.choice(statuses)
    jenis = random.choice(jenis_layanan)
    jadwal_layanan = fake.date_between(start_date="today", end_date="+1y")
    pasien_id = random.choice(pasien_ids)
    rumah_sakit_id = random.choice(rumah_sakit_ids)
    layanan_medis_data.append((str(uuid.uuid4()), status, jenis, jadwal_layanan, pasien_id, rumah_sakit_id))
execute_sql("INSERT INTO layanan_medis (id, status, jenis_layanan, jadwal_layanan, pasien_id, rumah_sakit_id) VALUES (?, ?, ?, ?, ?, ?)", layanan_medis_data, "Seeding layanan_medis")

# Close connection
cur.close()
conn.close()

print("Database seeding completed successfully!")