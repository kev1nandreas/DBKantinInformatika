--querydaffa
--menampilkan nama customer dan karyawan yang melakukan transaksi pada tanggal 25 september 2023 - 10 oktober 2023 dengan metode pembayaran Kartu debit
SELECT c_nama, k_nama
FROM customer
JOIN transaksi ON customer_c_nrp = c_nrp
JOIN karyawan ON k_nik = karyawan_k_nik
WHERE t_tanggal_transaksi BETWEEN '2023-09-25' AND '2023-10-10'
AND t_metode_pembayaran = 'Kartu debit';
--menampilkan nama tiap kedai dan jumlah menu dengan jenis menu Makanan di setiap kedai yang diurutkan berdasarkan nama kedai
SELECT ked_nama, COUNT(mn_id) AS jumlah_menu
FROM kedai
LEFT JOIN menu ON kedai_ked_id = ked_id AND mn_jenis = 'Makanan'
GROUP BY ked_nama
ORDER BY ked_nama;
--menampilkan data customer yang membershipnya kadaluarsa di tahun 2023
SELECT * FROM customer
WHERE c_nrp IN (
    SELECT customer_c_nrp
    FROM membership
    WHERE EXTRACT(YEAR FROM m_tanggal_kadluwarsa) = 2023
);
--menampilkan nama karyawan dan jumlah transaksi yang dilakukan oleh karyawan tersebut yang kemudian diurutkan berdasarkan jumlah transaksi terbanyak
SELECT k_nama, 
       (SELECT COUNT(t_id)
        FROM transaksi
        WHERE karyawan_k_nik = k_nik) AS jumlah_transaksi
FROM karyawan
ORDER BY jumlah_transaksi DESC;


--query hamas
--Tampilkan daftar menu yang dibeli dengan menggunakan metode pembayaran tunai dan total harga lebih dari 10000
SELECT MN.MN_NAMA, SUM(MN.MN_HARGA) AS TOTAL_PEMBELIAN
FROM TRANSAKSI TR
JOIN TRANSAKSI_MENU TM ON TR.T_ID = TM.TRANSAKSI_T_ID
JOIN MENU MN ON TM.MENU_MN_ID = MN.MN_ID
WHERE TR.T_METODE_PEMBAYARAN = 'Tunai'
GROUP BY MN.MN_NAMA
HAVING SUM(MN.MN_HARGA) > 10000;

--Tampilkan transaksi yang dilayani oleh karyawan dan diurutkan berdasarkan total transaksi terbesar
SELECT K.K_NAMA, COUNT(TR.T_ID) AS TOTAL_TRANSAKSI
FROM TRANSAKSI TR
JOIN KARYAWAN K ON TR.KARYAWAN_K_NIK = K.K_NIK
GROUP BY K.K_NAMA
ORDER BY TOTAL_TRANSAKSI DESC;

--Tampilkan nama karyawan yang bekerja di ombens if
SELECT K.K_NAMA
FROM KARYAWAN K
WHERE K.KEDAI_KED_ID =(
	SELECT KED_ID
	FROM KEDAI
	WHERE KED_NAMA = 'Ombens IF'
);

--Tampilkan customer yang memiliki Pembelian terbesar
SELECT C.C_NAMA, TOTAL_PEMBELIAN.TOTAL_BELANJA
FROM CUSTOMER C
JOIN (
    SELECT T.CUSTOMER_C_NRP, SUM(M.MN_HARGA) AS TOTAL_BELANJA
    FROM TRANSAKSI T
    JOIN TRANSAKSI_MENU TM ON T.T_ID = TM.TRANSAKSI_T_ID
    JOIN MENU M ON TM.MENU_MN_ID = M.MN_ID
    GROUP BY T.CUSTOMER_C_NRP
    ORDER BY TOTAL_BELANJA DESC
    LIMIT 1
) AS TOTAL_PEMBELIAN ON C.C_NRP = TOTAL_PEMBELIAN.CUSTOMER_C_NRP;

--query












