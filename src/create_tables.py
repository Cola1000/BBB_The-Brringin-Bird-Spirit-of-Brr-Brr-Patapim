import mariadb
import sys

# Connect to MariaDB Platform
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
def execute_sql(sql, desc=""):
    try:
        cur.execute(sql)
        conn.commit()
        print(f"[OK] {desc}")
    except mariadb.Error as e:
        print(f"[ERROR] {desc}: {e}")


# ------------------ CREATE TABLES ------------------

# tenaga_medis
execute_sql("""
CREATE TABLE IF NOT EXISTS tenaga_medis (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	email VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(100) NOT NULL,
	nama_lengkap VARCHAR(100) NOT NULL,
	tanggal_lahir DATE NOT NULL,
	nomor_telepon CHAR(20) NOT NULL,
	nikes VARCHAR(100) NOT NULL UNIQUE,
	jenis_profesi VARCHAR(100) NOT NULL
)""", "Create table tenaga_medis")

# bekerja
execute_sql("""
CREATE TABLE IF NOT EXISTS bekerja (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	tenaga_medis_id UUID NOT NULL,
	departemen_id UUID NOT NULL
)""", "Create table bekerja")

# departemen
execute_sql("""
CREATE TABLE IF NOT EXISTS departemen (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	nama VARCHAR(100) NOT NULL,
	gedung VARCHAR(100) NOT NULL,
	rumah_sakit_id UUID NOT NULL
)""", "Create table departemen")

# janji_temu
execute_sql("""
CREATE TABLE IF NOT EXISTS janji_temu (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
    alasan_konsultasi VARCHAR(255) NOT NULL,
	waktu_pelaksanaan DATETIME NOT NULL,
	tenaga_medis_id UUID NOT NULL,
	pasien_id UUID NOT NULL
)""", "Create table janji_temu")

# pasien
execute_sql("""
CREATE TABLE IF NOT EXISTS pasien (
    id UUID not NULL DEFAULT UUID() PRIMARY KEY,
	email VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	nama_lengkap VARCHAR(100) NOT NULL,
	tanggal_lahir DATE NOT NULL,
	nomor_telepon VARCHAR(20) NOT NULL
)""", "Create table pasien")

# layanan_medis
execute_sql("""
CREATE TABLE IF NOT EXISTS layanan_medis (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
    status ENUM("belum dibayar", "dijadwalkan", "sedang berlangsung", "selesai", "dibatalkan") NOT NULL,
	jenis_layanan VARCHAR(100) NOT NULL,
	jadwal_layanan DATE NOT NULL,
	pasien_id UUID NOT NULL,
	rumah_sakit_id UUID NOT NULL
)""", "Create table layanan_medis")

# rumah_sakit
execute_sql("""
CREATE TABLE IF NOT EXISTS rumah_sakit (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
    nama VARCHAR(100) NOT NULL
)""", "Create table rumah_sakit")

# resep
execute_sql("""
CREATE TABLE IF NOT EXISTS resep (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	janji_temu_id UUID NOT NULL
)""", "Create table resep")

# baymin
execute_sql("""
CREATE TABLE IF NOT EXISTS baymin (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	firmware VARCHAR(20)  NOT NULL,
	pasien_id UUID NOT NULL
)""", "Create table baymin")

# alamat
execute_sql("""
CREATE TABLE IF NOT EXISTS alamat (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	provinsi VARCHAR(100) NOT NULL,
	kota VARCHAR(100) NOT NULL,
	jalan VARCHAR(255) NOT NULL,
	pasien_id UUID NOT NULL
)""", "Create table alamat")

# dipesan
execute_sql("""
CREATE TABLE IF NOT EXISTS dipesan (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
    jumlah INT NOT NULL,
    pemesanan_obat_id UUID NOT NULL,
    obat_id UUID NOT NULL
)""", "Create table dipesan")

# komposisi_resep
execute_sql("""
CREATE TABLE IF NOT EXISTS komposisi_resep (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
    resep_id UUID NOT NULL,
    resep_item_id UUID NOT NULL
)""", "Create table komposisi_resep")

# log_baymin
execute_sql("""
CREATE TABLE IF NOT EXISTS log_baymin (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	waktu_penggunaan DATETIME NOT NULL,
	jenis_tindakan VARCHAR(100) NOT NULL,
	pasien_id UUID NOT NULL,
	baymin_id UUID NOT NULL
)""", "Create table log_baymin")

# pemesanan_obat
execute_sql("""
CREATE TABLE IF NOT EXISTS pemesanan_obat (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
    status ENUM("belum dibayar", "dijadwalkan", "sedang berlangsung", "selesai", "dibatalkan") NOT NULL,
    alamat_id UUID NOT NULL,
    rumah_sakit_id UUID NOT NULL
)""", "Create table pemesanan_obat")

# obat
execute_sql("""
CREATE TABLE IF NOT EXISTS obat (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	nama VARCHAR(100) NOT NULL,
	harga INT NOT NULL,
	label VARCHAR(100) NOT NULL
)""", "Create table obat")

# resep_item
execute_sql("""
CREATE TABLE IF NOT EXISTS resep_item (
    id UUID NOT NULL DEFAULT UUID() PRIMARY KEY,
	dosis VARCHAR(100) NOT NULL,
	cara_pakai VARCHAR(100) NOT NULL,
	obat_id UUID NOT NULL
)""", "Create table resep_item")

# ------------------ ADD FOREIGN KEYS ------------------

add_foreign_key = [
    # bekerja -> tenaga_medis, departemen
    ("ALTER TABLE bekerja ADD FOREIGN KEY (tenaga_medis_id) REFERENCES tenaga_medis(id)", "FK: bekerja.tenaga_medis_id"),
    ("ALTER TABLE bekerja ADD FOREIGN KEY (departemen_id) REFERENCES departemen(id)", "FK: bekerja.departemen_id"),

    # departemen -> rumah_sakit
    ("ALTER TABLE departemen ADD FOREIGN KEY (rumah_sakit_id) REFERENCES rumah_sakit(id)", "FK: departemen.rumah_sakit_id"),

    # janji_temu -> tenaga_medis, pasien
    ("ALTER TABLE janji_temu ADD FOREIGN KEY (tenaga_medis_id) REFERENCES tenaga_medis(id)", "FK: janji_temu.tenaga_medis_id"),
    ("ALTER TABLE janji_temu ADD FOREIGN KEY (pasien_id) REFERENCES pasien(id)", "FK: janji_temu.pasien_id"),

    # layanan_medis -> pasien, rumah_sakit
    ("ALTER TABLE layanan_medis ADD FOREIGN KEY (pasien_id) REFERENCES pasien(id)", "FK: layanan_medis.pasien_id"),
    ("ALTER TABLE layanan_medis ADD FOREIGN KEY (rumah_sakit_id) REFERENCES rumah_sakit(id)", "FK: layanan_medis.rumah_sakit_id"),
    
    # resep -> janji_temu
    ("ALTER TABLE resep ADD FOREIGN KEY (janji_temu_id) REFERENCES janji_temu(id)", "FK: resep.janji_temu_id"),
    
    # baymin -> pasien
    ("ALTER TABLE baymin ADD FOREIGN KEY (pasien_id) REFERENCES pasien(id)", "FK: baymin.pasien_id"),
    
    # alamat -> pasien
    ("ALTER TABLE alamat ADD FOREIGN KEY (pasien_id) REFERENCES pasien(id)", "FK: alamat.pasien_id"),
    
    # dipesan -> pemesanan_obat, obat
    ("ALTER TABLE dipesan ADD FOREIGN KEY (pemesanan_obat_id) REFERENCES pemesanan_obat(id)", "FK: dipesan.pemesanan_obat_id"),
    ("ALTER TABLE dipesan ADD FOREIGN KEY (obat_id) REFERENCES obat(id)", "FK: dipesan.obat_id"),

    # komposisi_resep -> resep, resep_item
    ("ALTER TABLE komposisi_resep ADD FOREIGN KEY (resep_id) REFERENCES resep(id)", "FK: komposisi_resep.resep_id"),
    ("ALTER TABLE komposisi_resep ADD FOREIGN KEY (resep_item_id) REFERENCES resep_item(id)", "FK: komposisi_resep.resep_item(id)"),

    # log_baymin -> pasien, baymin
    ("ALTER TABLE log_baymin ADD FOREIGN KEY (pasien_id) REFERENCES pasien(id)", "FK: log_baymin.pasien_id"),
    ("ALTER TABLE log_baymin ADD FOREIGN KEY (baymin_id) REFERENCES baymin(id)", "FK: log_baymin.baymin_id"),

    # pemesanan_obat -> alamat, rumah_sakit
    ("ALTER TABLE pemesanan_obat ADD FOREIGN KEY (alamat_id) REFERENCES alamat(id)", "FK: pemesanan_obat.alamat_id"),
    ("ALTER TABLE pemesanan_obat ADD FOREIGN KEY (rumah_sakit_id) REFERENCES rumah_sakit(id)", "FK: pemesanan_obat.rumah_sakit_id"),

    # resep_item -> obat
    ("ALTER TABLE resep_item ADD FOREIGN KEY (obat_id) REFERENCES obat(id)", "FK: resep_item.obat_id")
]

for sql, desc in add_foreign_key:
    execute_sql(sql, desc)

print("Semua tabel dan foreign key berhasil dibuat.")

# Close connection
cur.close()
conn.close()