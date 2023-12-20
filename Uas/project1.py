import requests #library yang kita gunakan untuk mengakses API/json
import pandas as pd
import json
 
# Alamat URL API
api_url = "https://satudata.kuburayakab.go.id/dataset/b2affd9c-1e2b-477a-97b7-6986afad3627/resource/f90685ef-57d7-458f-a27d-f8425c500725/download/data-agregat-kecamatan-sungai-kakap-menurut-wajib-kia.json"
 
try:
    # Mengirim permintaan GET ke API
    response = requests.get(api_url)
 
    # Memeriksa status kode respons
    if response.status_code == 200:
        # Parse data JSON yang diterima
        datauas_ = response.json()
 
        with open("datauas.json", "w") as json_file:
            json.dump(datauas_, json_file)
 
        # Baca data JSON dari file
        with open('datauas.json', 'r') as json_file:
            data = json_file.read()
 
        # Ubah JSON menjadi DataFrame pandas
        df = pd.read_json(data)
 
        # Simpan DataFrame ke dalam file Excel
        excel_file = 'datauas.xlsx'
        df.to_excel(excel_file, index=False)
 
        print(f"Data telah disimpan dalam file Excel: {excel_file}")
 
        # Menampilkan hasil
        for desa in datauas_:
            print(f"Kode Desa: {desa['KODE DESA']}")
            print(f"Nama Desa: {desa['NAMA DESA']}")
            print("-" * 30)
    else:
        print(f"Gagal mengambil data. Kode status: {response.status_code}")
 
except requests.exceptions.RequestException as e:
    print(f"Terjadi kesalahan saat menghubungi API: {str(e)}")
 