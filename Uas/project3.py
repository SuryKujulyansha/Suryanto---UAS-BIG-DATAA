import requests
import mysql.connector
 
# Konfigurasi database
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'test_database'
}
 
# Alamat URL API
api_url = "https://satudata.kuburayakab.go.id/dataset/b2affd9c-1e2b-477a-97b7-6986afad3627/resource/f90685ef-57d7-458f-a27d-f8425c500725/download/data-agregat-kecamatan-sungai-kakap-menurut-wajib-kia.json"
 
try:
    # Mengirim permintaan GET ke API
    response = requests.get(api_url)
 
    # Memeriksa status kode respons
    if response.status_code == 200:
        # Parse data JSON yang diterima
        datauas_ = response.json()
 
        # Membuka koneksi ke database
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
 
        # Menambahkan data pengguna ke dalam tabel
        for desa in datauas_:
            cursor.execute('''
                INSERT INTO desa (kode_desa, nama_desa, jumlah)
                VALUES (%s, %s, %s)
            ''', (desa['KODE DESA'], desa['NAMA DESA'], desa['JUMLAH']))
 
        # Menyimpan perubahan dan menutup koneksi
        conn.commit()
        conn.close()
 
        print("Data pengguna telah disimpan ke database MySQL.")
    else:
        print(f"Gagal mengambil data. Kode status: {response.status_code}")
 
except requests.exceptions.RequestException as e:
    print(f"Terjadi kesalahan saat menghubungi API: {str(e)}")
 