# Prediksi-Faktor-yang-Mempengaruhi-Serangan-Jantung-Dengan-Regresi-Logistik
Proyek ini adalah tugas akhir untuk mata kuliah Statistika Inferensial pada semester 3 yang bertujuan untuk **memprediksi faktor-faktor yang mempengaruhi risiko serangan jantung** menggunakan metode regresi logistik. Dalam proyek ini, kami menggunakan dataset yang berisi berbagai informasi kesehatan pasien untuk membangun model yang dapat memprediksi kemungkinan seseorang mengalami serangan jantung berdasarkan faktor-faktor tersebut.

Selain itu, proyek ini juga menerapkan **metode stepwise backward** dalam pemilihan fitur untuk meningkatkan performa model. Metode ini dimulai dengan model yang memasukkan semua variabel independen dan secara bertahap menghapus fitur yang kurang signifikan untuk meningkatkan akurasi model akhir.

**Dataset**: [Framingham](https://www.kaggle.com/datasets/navink25/framingham)

## 🔍 Tujuan Proyek

- **Menganalisis dataset** yang berisi informasi kesehatan pasien untuk mengidentifikasi faktor-faktor yang signifikan dalam memprediksi risiko serangan jantung.
- **Membangun model regresi logistik** yang dapat digunakan untuk **mengklasifikasikan** risiko serangan jantung berdasarkan data kesehatan pasien.
- **Menerapkan metode stepwise backward** untuk seleksi fitur, yaitu dengan memulai dari model yang mencakup semua variabel dan secara bertahap menghapus fitur yang tidak signifikan untuk menyempurnakan model.
- **Menginterpretasikan hasil model** untuk memberikan wawasan tentang faktor-faktor apa saja yang paling mempengaruhi risiko serangan jantung.

<img width="635" alt="Screenshot 2024-07-07 at 16 35 33" src="https://github.com/FerdiRJ/Prediksi-Faktor-yang-Mempengaruhi-Serangan-Jantung-Dengan-Regresi-Logistik/assets/131805279/45f0b72f-68cd-4776-80ad-5a26098f085e">
<img width="629" alt="Screenshot 2024-07-07 at 16 35 46" src="https://github.com/FerdiRJ/Prediksi-Faktor-yang-Mempengaruhi-Serangan-Jantung-Dengan-Regresi-Logistik/assets/131805279/608c41b7-73b7-42f5-ac31-ac7eee9abb2d">

didasarkan pada evaluasi kinerja dan signifikansi variabel prediktor. Metode Backward Stepwise menunjukkan eliminasi variabel independen yang tidak signifikan (education, BPMeds, currentSmoker, diabetes, diaBP, BMI, prevalentStroke) untuk meningkatkan kemampuan model dalam menjelaskan risiko penyakit jantung. Variabel yang dipertahankan (male, age, cigsPerDay, prevalentHyp, totChol, sysBP, heartRate, glucose) dianggap signifikan dan berkontribusi pada pembentukan model.

Dengan menggunakan Model Regresi Logistik (Metode Stepwise Backward), terpilih model terbaik untuk mengklasifikasi kemungkinan terjadinya serangan jantung 10 tahun ke depan, dengan akurasi mencapai 85,1% dan AIC yang lebih rendah. Pemilihan model didasarkan pada kontribusi signifikan dari variabel independen yang meningkatkan kualitas dan akurasi prediksi risiko penyakit jantung. Keputusan ini diambil berdasarkan analisis yang kuat dan metode statistik yang valid, memastikan relevansi tinggi model dalam menjelaskan fenomena yang diteliti.

