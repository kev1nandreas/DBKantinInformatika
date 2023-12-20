--query daffa

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

--menampilkan nrp customer, nama customer, dan jumlah transaksi yang dilakukan oleh customer yang tergabung dengan membership di bulan Oktober yang kemudian diurutkan berdasarkan jumlah transaksi terbanyak
SELECT c_nrp, c_nama, (
	SELECT COUNT(t_id)
	FROM transaksi
	WHERE customer_c_nrp = c_nrp
) AS jumlah_transaksi
FROM customer
WHERE c_nrp IN (
	SELECT customer_c_nrp
	FROM transaksi 
	WHERE EXTRACT(MONTH FROM t_tanggal_transaksi ) = 10
) AND c_nrp IN(
	SELECT customer_c_nrp
	FROM membership
)
GROUP BY c_nrp
ORDER BY jumlah_transaksi DESC;

--prosentase jumlah transasksi yang dilayani pegawai dengan usia kurang dari 30 tahun per membership surabaya atau jakarta
SELECT m.m_id_membership, m.m_alamat,
COUNT(*) * 100.0 / (
	SELECT COUNT(t.t_id)
	FROM membership m
	JOIN customer c ON m.customer_c_nrp = c.c_nrp
	JOIN transaksi t ON c.c_nrp = t.customer_c_nrp
	JOIN karyawan k ON t.karyawan_k_nik = k.k_nik
	WHERE m.m_alamat IN ('Surabaya', 'Jakarta') AND k.k_umur < 30
)AS prosentase
FROM membership m
JOIN customer c ON m.customer_c_nrp = c.c_nrp
JOIN transaksi t ON c.c_nrp = t.customer_c_nrp
JOIN karyawan k ON t.karyawan_k_nik = k.k_nik
WHERE m.m_alamat IN ('Surabaya', 'Jakarta') AND k.k_umur < 30
GROUP BY m.m_id_membership
ORDER BY prosentase DESC;


--query hamas

--Tampilkan nomor transaksi dan nama orang yang memiliki membership dengan alamat di Surabaya serta melakukan transaksi pada tahun 2023.
SELECT T.T_ID, C.C_NAMA, M.M_ALAMAT
FROM TRANSAKSI T
JOIN CUSTOMER C ON T.CUSTOMER_C_NRP = C.C_NRP
JOIN MEMBERSHIP M ON T.CUSTOMER_C_NRP = M.CUSTOMER_C_NRP
WHERE EXTRACT(YEAR FROM T.T_TANGGAL_TRANSAKSI) = 2023
AND M.M_ALAMAT LIKE '%Surabaya%';

--Tampilkan transaksi yang dilayani oleh karyawan dan diurutkan berdasarkan total transaksi terbesar
SELECT K.K_NAMA, COUNT(TR.T_ID) AS TOTAL_TRANSAKSI
FROM TRANSAKSI TR
JOIN KARYAWAN K ON TR.KARYAWAN_K_NIK = K.K_NIK
GROUP BY K.K_NAMA
ORDER BY TOTAL_TRANSAKSI DESC;

--Tampilkan nama dan nrp customer yang melakukan transaksi tetapi tidak menggunakan metode pembayaran tunai
SELECT C_NRP, C_NAMA
FROM CUSTOMER
WHERE C_NRP IN (
    SELECT DISTINCT CUSTOMER_C_NRP
    FROM TRANSAKSI
    WHERE T_METODE_PEMBAYARAN <> 'Tunai'
);

--Tampilkan jumlah transaksi yang dilakukan oleh customer yang tidak memiliki membership
SELECT C.C_NRP, C.C_NAMA, COUNT(T.T_ID) AS TOTAL_TRANSAKSI
FROM CUSTOMER C
LEFT JOIN TRANSAKSI T ON C.C_NRP = T.CUSTOMER_C_NRP
WHERE C.C_NRP NOT IN (
	SELECT M.CUSTOMER_C_NRP
	FROM MEMBERSHIP M
)
GROUP BY C.C_NRP, C.C_NAMA
ORDER BY TOTAL_TRANSAKSI DESC;




--query kevin

--Tampilkan transaksi, nama yang memiliki banyak pembelian lebih dari rata-rata banyak pembelian dan berjenis makanan
SELECT M.MN_ID, M.MN_NAMA, M.MN_HARGA, M.MN_JENIS , COUNT (MENU_MN_ID)
FROM MENU M, TRANSAKSI_MENU TM, TRANSAKSI T
WHERE M.MN_ID = TM.MENU_MN_ID AND
    TM.TRANSAKSI_T_ID = T.T_ID AND
    M.MN_JENIS = 'Makanan'
GROUP BY M.MN_ID  
HAVING COUNT (MENU_MN_ID) > (
    SELECT COUNT(MENU_MN_ID) / COUNT (DISTINCT TRANSAKSI_T_ID) 
    FROM TRANSAKSI_MENU
);

--Tampilkan nama customer, id meja, dan total harga yang melakukan reservasi meja pada tanggal 17 November 2023 dan urutkan berdasarkan total belanja terkecil
SELECT C.C_NAMA, ME.ME_ID, SUM(MN_HARGA) AS TOTAL_BELANJA
FROM CUSTOMER C, TRANSAKSI T, TRANSAKSI_MENU TM, MENU M, RESERVASI R, RESERVASI_MEJA RM, MEJA ME
WHERE C.C_NRP = T.CUSTOMER_C_NRP AND
    T.T_ID = R.TRANSAKSI_T_ID AND
    R.R_ID = RM.RESERVASI_R_ID AND
    RM.MEJA_ME_ID = ME.ME_ID AND
    T.T_ID = TM.TRANSAKSI_T_ID AND
    TM.MENU_MN_ID = M.MN_ID AND
    R.R_CUSTOMER_DATANG BETWEEN '11/17/2023 00:00:00' AND '11/17/2023 23:59:00'
GROUP BY C.C_NAMA, ME.ME_ID
ORDER BY TOTAL_BELANJA ASC;

--Tampilkan data karyawan yang pernah melayani customer dengan nama Lindsey Small
SELECT K.K_NIK, K.K_NAMA, K.K_JENIS_KELAMIN, K.K_EMAIL, K.K_UMUR, K.K_NO_TELP
FROM KARYAWAN K, CUSTOMER C, TRANSAKSI T
WHERE T.KARYAWAN_K_NIK = K.K_NIK AND
    C.C_NRP = T.CUSTOMER_C_NRP AND
    C.C_NRP IN (
        SELECT C_NRP FROM CUSTOMER
        WHERE C_NAMA LIKE 'Lindsey Small'
    )
GROUP BY K.K_NIK;

--Tampilkan history penggunaan meja dengan kapasitas 6 dan banyak menu yang dipesan per reservasi oleh meja tersebut
SELECT ME.ME_ID, R.R_ID, C.C_NAMA AS NAMA_PEMESAN, R.R_CUSTOMER_DATANG, R.R_CUSTOMER_PERGI, COUNT(MN.MN_NAMA) AS BANYAK_MENU
FROM MEJA ME, RESERVASI_MEJA RM, RESERVASI R, TRANSAKSI T, CUSTOMER C, TRANSAKSI_MENU TM, MENU MN
WHERE ME.ME_ID = RM.MEJA_ME_ID AND
    RM.RESERVASI_R_ID = R.R_ID AND
    R.TRANSAKSI_T_ID = T.T_ID AND
    T.CUSTOMER_C_NRP = C.C_NRP AND
    T.T_ID = TM.TRANSAKSI_T_ID AND
    TM.MENU_MN_ID = MN.MN_ID AND
    ME.ME_ID IN (
        SELECT ME_ID FROM MEJA
        WHERE me_kapasitas = 6
    )
GROUP BY ME.ME_ID, R.R_ID, C.C_NAMA
ORDER BY C.C_NAMA ASC;

--Tampilkan persentase jumlah reservasi di bulan November sampai Desember 2023 per customer yang memiliki nomor telepon berawalan 087. Urutkan desc dengan kolom yang ditampilkan id, no telepon, persentase jumlah reservasi
SELECT M.M_ID_MEMBERSHIP, M.M_NO_TELP, COUNT(R.R_ID) * 100 / (SELECT COUNT(R_ID) FROM RESERVASI) AS "Persentase (%)"
FROM MEMBERSHIP M, CUSTOMER C, TRANSAKSI T, RESERVASI R
WHERE C.C_NRP = M.CUSTOMER_C_NRP AND
    C.C_NRP = T.CUSTOMER_C_NRP AND
    T.T_ID = R.TRANSAKSI_T_ID AND
    EXTRACT (MONTH FROM T_TANGGAL_TRANSAKSI) BETWEEN 11 AND 12 AND
    M.M_NO_TELP LIKE '087%'
GROUP BY M.M_ID_MEMBERSHIP
ORDER BY M.M_ID_MEMBERSHIP DESC;




--query kukuh
--Menampilkan nama customer yang melakukan reservasi dengan tanggal yang
lebih terbaru dari tanggal 1 januari 2023. Dan menampilkan tanggal reservasinya.
SELECT t.t_id, t.t_tanggal_transaksi, r.r_customer_datang, r.r_customer_pergi, c.c_nama
FROM transaksi t
JOIN reservasi r ON t.t_id = t.t_id
JOIN customer c ON t.customer_c_nrp = c.c_nrp
WHERE c.c_nrp = '5025250319' AND t.t_tanggal_transaksi >= '2023-01-01'
ORDER BY t.t_tanggal_transaksi 
LIMIT 3;

--Menampilkan total transaksi untuk setiap metode pembayaran.
SELECT t.t_metode_pembayaran,
      COUNT(*) AS "Total Transaksi"
FROM transaksi t
GROUP BY t.t_metode_pembayaran
ORDER BY "Total Transaksi" DESC;

--Menampilkan customer yang mendapat poin lebih dari 3 dan sertakan poin
mereka.
SELECT c.c_nrp,c.c_nama,m.m_poin
  FROM customer c
  JOIN membership m ON c.c_nrp = m.customer_c_nrp
WHERE c.c_nrp IN (
    SELECT m.CUSTOMER_C_NRP
    FROM membership m
    WHERE M_POIN > 3
)
ORDER BY c_nrp ASC;

--Menampilkan siapa saja yang membeli menu makanan dengan id menu 'C12', dan total yang ia beli selama berkunjung di kantin.

SELECT c.c_nama AS "Nama Pelanggan", COUNT(t.t_id) AS total_orders
FROM customer c
JOIN transaksi t ON c.c_nrp = t.customer_c_nrp
WHERE t.t_id IN (
SELECT tm.transaksi_t_id
FROM transaksi_menu tm
WHERE tm.menu_mn_id = 'C12'
)
GROUP BY c.c_nama;
